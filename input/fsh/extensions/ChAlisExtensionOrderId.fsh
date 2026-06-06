Extension: ChAlisExtensionOrderId
Id: ch-alis-connect-ext-orderid
Title: "CH ALIS Extension OrderID"
Description: "This extension describes the OrderID."
Context: ChargeItem
* . ^short = "CH ALIS Extension OrderID"
* url only uri
* valueString 1..
* valueString only string
* valueString ^short = "OrderID"