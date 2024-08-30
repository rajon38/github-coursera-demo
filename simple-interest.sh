## Function to calculate simple interest....
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    # Calculate simple interest.....
    local interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

    # Display the result
    echo "Simple Interest: $interest"
}

## Check if the user has provided all three arguments....
if [ $# -ne 3 ]; then
    echo "Usage: $0 principal rate time"
    echo "Example: $0 1000 5 3"
    exit 1
fi

## Get the arguments....
principal=$1
rate=$2
time=$3

## Calculate simple interest....
calculate_simple_interest $principal $rate $time