%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.acc_no) mapObject ((value, key, index) -> {
    (key) : [("test" ++ index+1) : value.acc_no map {
        "acc-value" : $
    }]
})

//here as per the requested output we have used the groupBy function to group items from an array based on specified criteria, and also mapObject to map the data according to the desired output.