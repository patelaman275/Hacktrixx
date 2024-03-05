<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader="false"
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="bac5c" viewKey="View 1">
    <Form
      id="form2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader="false
"
      style={{ ordered: [{ border: "rgba(181, 1, 255, 1)" }] }}
    >
      <Header>
        <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Text id="text12" value="**Create Refund**" verticalAlign="center" />
        <Text
          id="text13"
          value="*Select a row from the Sales Orders to refund an amount"
          verticalAlign="center"
        />
        <Text id="text14" value="**Charge ID**" verticalAlign="center" />
        <Text
          id="text18"
          value="pi_3Oqf60SBNwqXA4qv0mU360t3"
          verticalAlign="center"
        />
        <NumberInput
          id="numberInput1"
          currency="USD"
          inputValue={0}
          label="Refund Amount: "
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <Select
          id="select1"
          emptyMessage="No options"
          itemMode="static"
          label="Refund Reason"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="b9783" label="Does not like it" value="didntlike" />
          <Option id="fed2b" label="Arrived too late" value="toolate" />
          <Option id="64023" label="Would like to cancel" value="cancel" />
        </Select>
        <TextInput
          id="textInput13"
          label="Email Address: "
          placeholder="Enter value"
        />
        <Text id="text15" value="**Refund Summary**" verticalAlign="center" />
        <Text
          id="text16"
          value="Refund Amount: {{numberInput1.value}}"
          verticalAlign="center"
        />
        <Text
          id="text17"
          value="Reason: {{select1.value}}"
          verticalAlign="center"
        />
        <TextInput
          id="textInput12"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ emailText.value }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton2"
          style={{ ordered: [{ background: "rgba(230, 8, 8, 1)" }] }}
          styleVariant="solid"
          submit={true}
          submitTargetId="form2"
          text="Refund and Notify"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendEmail"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Text
      id="text19"
      value="**Overview of Order Number {{table1.selectedRow.orderid}}**"
      verticalAlign="center"
    />
    <Text
      id="text20"
      value="**Select row from  Sales Orders for review "
      verticalAlign="center"
    />
    <Text
      id="text24"
      value="{{table2.data[parseInt(table1.selectedRow.custid) - 1].contactname}}"
      verticalAlign="center"
    />
    <Text id="text21" value="Customer Name:" verticalAlign="center" />
    <Text id="text22" value="Shipping Address:" verticalAlign="center" />
    <Text
      id="text26"
      value="{{table1.selectedRow.shipaddress}}"
      verticalAlign="center"
    />
    <Text id="text23" value="Employee Name:" verticalAlign="center" />
    <Text
      id="text25"
      value="{{table4.data[parseInt(table1.selectedRow.empid) - 1].firstname + ' ' + table5.data[parseInt(table1.selectedRow.empid) - 1].lastname}}"
      verticalAlign="center"
    />
    <Timeline
      id="timeline1"
      items={
        '["Order Created - {{table1.selectedRow.orderdate}}", "Order Required By - {{table1.selectedRow.requireddate}}", "Shipped Date - {{table1.selectedRow.shippeddate}}"]'
      }
      timestamps={
        '["2020-06-29T21:34:00+00:00", "2020-06-29T20:39:00+00:00", "2020-06-28T11:12:00+00:00"]'
      }
    />
  </View>
</Container>
