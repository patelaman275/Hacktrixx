<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter="false"
  showHeader="false"
  showOverlay={true}
>
  <Header>
    <Text id="modalTitle1" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form1"
      disableSubmit=""
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter="true"
      showHeader="false"
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Text
          id="text11"
          style={{ ordered: [{ background: "highlight" }] }}
          value=" **Create an Order**"
          verticalAlign="center"
        />
        <TextInput
          id="textInput2"
          label="Employee ID"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput3"
          label="Customer ID"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput1"
          label="Order ID:"
          labelPosition="top"
          placeholder="Enter value"
        />
        <DateTime
          id="dateTime1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Ordered Date:"
          minuteStep={15}
          value="{{ new Date() }}"
        />
        <DateTime
          id="dateTime2"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Required Date:"
          minuteStep={15}
          value="{{ new Date() }}"
        />
        <Divider id="divider2" />
        <TextInput id="textInput4" label="Address" placeholder="Enter value" />
        <TextInput id="textInput5" label="City" placeholder="Enter value" />
        <TextInput id="textInput6" label="Country" placeholder="Enter value" />
        <TextInput id="textInput7" label="Region" placeholder="Enter value" />
        <TextInput id="textInput8" label="Postcode" placeholder="Enter value" />
        <Divider id="divider3" />
        <TextInput
          id="textInput11"
          label="Shipper ID"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput9"
          label="Ship name"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput10"
          label="Freight"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Date
          id="date1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Shipped on:"
          value="{{ new Date() }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          styleVariant="solid"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addSalesOrderData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="confetti"
        params={{ ordered: [] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
