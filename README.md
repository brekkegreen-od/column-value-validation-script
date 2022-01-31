# column-value-validation-script
Script to find any data values not matching previous configuration that we need to clarify with the customer 

#### Run command on command line to start Jupyter Notebook
`~ docker run -p 8888:8888 -v $(pwd):/home/jovyan/work jupyter/scipy-notebook`

Follow instructions for accessing the notebook - Copy and paste url with token into the browser

Create "data" directory and place all data files inside this directory

Navigate to work/notebooks/validate_initial_files.ipynb

Edit the path according to the naming convention you've used for your folder structure.

Run all code cells from top to bottom

## Current list of validation outputs:

#### DRIVER FILE - 

- TYPE_OF - COUNTS
- COUNTRY_HOS_RULES - COUNTS
- GROUP_ID - COUNTS
- DRIVERS WITH ONDUTY HOURS OUTSIDE NORM
- DRIVERS WITH AVALABLE DRIVER HOURS OUTSIDE NORM
- TERMINATED DRIVERS WITH TRUE ACTIVE STATUS
- REHIRED DRIVERS WITH FALSE ACTIVE STATUS

#### MOVES FILE - 

- MOVE_STATUS - COUNTS
- LOADED - COUNTS
- ORDER_ID - BLANKS
- PRORATED_REVENUE - NEGATIVE
- BROKERAGE - COUNTS
- MOVE_DISTANCE - OUT OF BOUNDS (<0 OR >4000)

#### ORDERS FILE - 

- STATUS - COUNTS
- COMMODITY_ID - COUNTS
- REVENUE_CODE_ID - COUNTS
- CUSTOMER_ID - BLANKS
- CUSTOMER_ID - COUNTS TOP 10
- ORDERED_DATE - BLANKS
- BILL_DISTANCE - OUT OF BOUNDS (<0 OR >4000)
- FREIGHT_CHARGE - NEGATIVE
- OTHERCHARGETOTAL - NEGATIVE

#### STOPS FILE - 

- ACTUAL_ARRIVAL - BLANKS
- ACTUAL_DEPARTURE - BLANKS
- STOP_TYPE - COUNTS
- SCHED_ARRIVE_EARLY - BLANKS
- SCHED_ARRIVE_LATE - BLANKS
- ZIP_CODE - BLANKS
- ZIP_CODE - INCORRECT FORMAT - Too Short
- ZIP_CODE - INCORRECT FORMAT - Too Long
- ZIP_CODE - INCORRECT FORMAT - Non-numeric Characters