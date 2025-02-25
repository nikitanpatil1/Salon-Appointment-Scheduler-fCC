#!/bin/bash
# PSQL="psql --username=freecodecamp --dbname=salon -c"
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ PHOENIX SALON ~~~~~"

echo -e "\nWelcome to Phoenix Salon, How may I help you?"

echo -e "\nTo book an appointment start by choosing from the service below.\n"

MAIN_MENU(){
  if [[ $1 ]]
  then
   echo -e "\n$1"
  fi

  AVAILABLE_SERVICES=$($PSQL "SELECT * FROM services")
  echo "$AVAILABLE_SERVICES" | while read SERVICE_ID BAR NAME
  do
    echo "$SERVICE_ID) $NAME"
  done
  
  echo -e "\n(Enter the service number from above list.)"
  read SERVICE_ID_SELECTED

  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  if [[ -z $SERVICE_NAME ]]
  then
    MAIN_MENU "Please enter the correct service number!!"
  else  
   APPOINTMENT_MENU
  fi

}

APPOINTMENT_MENU(){
  echo -e "\nEnter your phone number:"
  read CUSTOMER_PHONE

  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_NAME ]]
   then
    echo -e "\nLooks like we have a new customer, YAY!!"
    echo -e "\nWhat's your name?"
    read CUSTOMER_NAME

    INSERT_NEW_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  echo -e "\nAt what time would you like to book your appointment for your $SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME

  GET_CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  APPOINTMENT_FINAL_ENTRY=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($GET_CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."

  EXIT
}

EXIT(){
  echo -e "\nSee you, Have a good day!!"
}

MAIN_MENU
