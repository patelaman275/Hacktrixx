<GlobalFunctions>
  <GoogleSheetsQuery
    id="getSalesOrderData"
    resourceDisplayName="Northwind CRM Data"
    resourceName="bbd28f84-49bf-4ebe-b2e2-ec3fda199f0d"
    sheetName="Sales Order"
    spreadsheetId="1aKglh0-w8dwyKssc9CJwKiOqTc-COPCuyx4zXnuv3Wg"
  />
  <GoogleSheetsQuery
    id="getCustomerData"
    resourceDisplayName="Northwind CRM Data"
    resourceName="bbd28f84-49bf-4ebe-b2e2-ec3fda199f0d"
    sheetName="Customer"
    spreadsheetId="1aKglh0-w8dwyKssc9CJwKiOqTc-COPCuyx4zXnuv3Wg"
  />
  <GoogleSheetsQuery
    id="getOrderDetails"
    resourceDisplayName="Northwind CRM Data"
    resourceName="bbd28f84-49bf-4ebe-b2e2-ec3fda199f0d"
    sheetName="Order Detail"
    spreadsheetId="1aKglh0-w8dwyKssc9CJwKiOqTc-COPCuyx4zXnuv3Wg"
  />
  <GoogleSheetsQuery
    id="getEmployeeData"
    resourceDisplayName="Northwind CRM Data"
    resourceName="bbd28f84-49bf-4ebe-b2e2-ec3fda199f0d"
    sheetName="Employee"
    spreadsheetId="1aKglh0-w8dwyKssc9CJwKiOqTc-COPCuyx4zXnuv3Wg"
  />
  <GoogleSheetsQuery
    id="addSalesOrderData"
    actionType="append"
    resourceDisplayName="Northwind CRM Data"
    resourceName="bbd28f84-49bf-4ebe-b2e2-ec3fda199f0d"
    runWhenModelUpdates={false}
    sheetName="Sales Order"
    sheetUpdate="[{
  'chargeid': 'ch_743w32_TEST','custid': '{{textInput3.value}}','empid': '{{textInput2.value}}','freight': '{{textInput10.value}}','orderdate': '{{dateTime1.value}}','orderid':' {{textInput1.value}}','requireddate': '{{dateTime2.value}}','shipaddress': '{{textInput4.value}}','shipcity': '{{textInput5.value}}','shipcountry': '{{textInput6.value}}','shipname': '{{textInput9.value}}','shippeddate': '{{date1.value}}','shipperid': '{{textInput11.value}}','shippostalcode': '{{textInput8.value}}','shipregion': '{{textInput7.value}}',
}]"
    spreadsheetId="1aKglh0-w8dwyKssc9CJwKiOqTc-COPCuyx4zXnuv3Wg"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getSalesOrderData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="deleteSelectedRow"
    actionType="delete"
    filterBy={
      '[{"key":"orderid","value":"{{table1.selectedRow.orderid}}","operation":"="}]'
    }
    notificationDuration={4.5}
    resourceDisplayName="Northwind CRM Data"
    resourceName="bbd28f84-49bf-4ebe-b2e2-ec3fda199f0d"
    runWhenModelUpdates={false}
    sheetName="Sales Order"
    showSuccessToaster={false}
    spreadsheetId="1aKglh0-w8dwyKssc9CJwKiOqTc-COPCuyx4zXnuv3Wg"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getSalesOrderData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Function id="emailText" funcBody={include("./lib/emailText.js", "string")} />
  <OpenAPIQuery
    id="postRefund"
    isMultiplayerEdited={false}
    method="post"
    operationId="PostRefunds"
    parameterDynamicStates={'{"Stripe-Account":false,"Idempotency-Key":false}'}
    parameterMetadata=""
    parameters="{}"
    path="/v1/refunds"
    requestBody={
      '{"amount":"{{numberInput1.value}}","charge":"{{text18.value}}"}'
    }
    requestBodyDynamicStates={
      '{"amount":false,"charge":false,"currency":false,"customer":false,"expand":false,"instructions_email":false,"metadata":false,"origin":false,"payment_intent":false,"reason":false,"refund_application_fee":false,"reverse_transfer":false}'
    }
    requestBodyMetadata="{}"
    resourceDisplayName="CRM Stripe resource"
    resourceName="8132529a-0f79-4d88-8146-0156c03caf7d"
  />
  <SMTPQuery
    id="sendEmail"
    body="{{textInput12.value}}"
    fromEmail="sb1130@srmist.edu.in"
    resourceDisplayName="Gmail"
    resourceName="2350e66b-b2ff-4679-a55c-4174a69871b3"
    subject="Your Refund"
    toEmail="{{textInput13.value}}"
  />
  <connectResource id="query9" _componentId={null} />
</GlobalFunctions>
