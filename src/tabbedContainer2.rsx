<Container
  id="tabbedContainer2"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs2"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="8e1a5" value="Tab 1" />
      <Option id="96023" value="Tab 2" />
      <Option id="a1a15" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="58b3a" label="Overview" viewKey="View 1">
    <Statistic
      id="statistic1"
      currency="USD"
      formattingStyle="currency"
      label="Total of selected Row:"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{table3.selectedRow.qty * table3.selectedRow.unitprice}}"
    />
    <Text
      id="text8"
      value=" **Customers:{{getCustomerData.data.length}}!**"
      verticalAlign="center"
    />
    <Text
      id="text9"
      value="**Orders: {{getSalesOrderData.data.length}}!**"
      verticalAlign="center"
    />
    <Divider id="divider1" />
    <Text id="text4" value="**Shipped Orders**" verticalAlign="center" />
    <Text id="text7" value="**Full Price Orders**" verticalAlign="center" />
    <ProgressCircle
      id="progressCircle1"
      horizontalAlign="center"
      value="{{getSalesOrderData.data.filter(order => order.shippeddate !== '').length/ getSalesOrderData.data.length * 100}}"
    />
    <ProgressCircle
      id="progressCircle2"
      horizontalAlign="center"
      value="{{getOrderDetails.data.filter(order => order.discount == '0').length/ getOrderDetails.data.length * 100}}"
    />
    <Text
      id="text5"
      value=" Currently {{ progressCircle1.value.toFixed(2)}}%! of all orders have been shipped"
      verticalAlign="center"
    />
    <Text
      id="text6"
      value="Currently {{ progressCircle2.value.toFixed(2)}}%! of all orders have been sold at full price."
      verticalAlign="center"
    />
  </View>
  <View id="9cb1c" label="Distribution" viewKey="View 2">
    <Table
      id="table4"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getEmployeeData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="cefed"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="empid"
        label="Empid"
        placeholder="Enter value"
        position="center"
        size={42}
        summaryAggregationMode="none"
      />
      <Column
        id="5e294"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="lastname"
        label="Lastname"
        placeholder="Enter value"
        position="center"
        size={53}
        summaryAggregationMode="none"
      />
      <Column
        id="5231a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="firstname"
        label="Firstname"
        placeholder="Enter value"
        position="center"
        size={57}
        summaryAggregationMode="none"
      />
      <Column
        id="e1809"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="title"
        label="Title"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="105e3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="titleofcourtesy"
        label="Titleofcourtesy"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="55f3c"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="birthdate"
        label="Birthdate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9aff3"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="hiredate"
        label="Hiredate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8cf6d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="address"
        label="Address"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d04ba"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="city"
        label="City"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7465a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="region"
        label="Region"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a02a6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="postalcode"
        label="Postalcode"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3bdb6"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7ca65"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="phone"
        label="Phone"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="73ba4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="extension"
        label="Extension"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bc8e4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="photo"
        label="Photo"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="306a8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="notes"
        label="Notes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e53c7"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="mgrid"
        label="Mgrid"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a891e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="photopath"
        label="Photopath"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <PlotlyChart
      id="chart1"
      chartType="pie"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "orderid" },
                {
                  datasource:
                    "{{formatDataAsObject(getSalesOrderData.data)['orderid']}}",
                },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 11: "#A7F3D0" },
                      { 22: "#CD6F00" },
                      { 33: "#3170F9" },
                      { 44: "#EECFF3" },
                      { 55: "#92400E" },
                      { 66: "#60A5FA" },
                      { 77: "#CF94D8" },
                      { 88: "#064E3B" },
                      { 99: "#DBEAFE" },
                      { 12: "#EECFF3" },
                      { 23: "#92400E" },
                      { 34: "#60A5FA" },
                      { 45: "#CF94D8" },
                      { 56: "#064E3B" },
                      { 67: "#DBEAFE" },
                      { 78: "#AE57BB" },
                      { 89: "#059669" },
                      { 13: "#CF94D8" },
                      { 24: "#064E3B" },
                      { 35: "#DBEAFE" },
                      { 46: "#AE57BB" },
                      { 57: "#059669" },
                      { 68: "#FDE68A" },
                      { 79: "#6E3276" },
                      { 14: "#AE57BB" },
                      { 25: "#059669" },
                      { 36: "#FDE68A" },
                      { 47: "#6E3276" },
                      { 58: "#34D399" },
                      { 69: "#F59E0B" },
                      { 15: "#6E3276" },
                      { 26: "#34D399" },
                      { 37: "#F59E0B" },
                      { 48: "#1E3A8A" },
                      { 59: "#A7F3D0" },
                      { 16: "#1E3A8A" },
                      { 27: "#A7F3D0" },
                      { 38: "#CD6F00" },
                      { 49: "#3170F9" },
                      { 17: "#3170F9" },
                      { 28: "#EECFF3" },
                      { 39: "#92400E" },
                      { 18: "#60A5FA" },
                      { 29: "#CF94D8" },
                      { 19: "#DBEAFE" },
                      { 190: "#AE57BB" },
                      { 290: "#60A5FA" },
                      { 180: "#FDE68A" },
                      { 191: "#6E3276" },
                      { 390: "#CD6F00" },
                      { 280: "#064E3B" },
                      { 170: "#34D399" },
                      { 291: "#DBEAFE" },
                      { 181: "#F59E0B" },
                      { 192: "#1E3A8A" },
                      { 380: "#EECFF3" },
                      { 270: "#AE57BB" },
                      { 391: "#92400E" },
                      { 160: "#1E3A8A" },
                      { 281: "#059669" },
                      { 171: "#A7F3D0" },
                      { 292: "#FDE68A" },
                      { 182: "#CD6F00" },
                      { 193: "#3170F9" },
                      { 370: "#60A5FA" },
                      { 260: "#FDE68A" },
                      { 381: "#CF94D8" },
                      { 150: "#CD6F00" },
                      { 271: "#6E3276" },
                      { 392: "#064E3B" },
                      { 161: "#3170F9" },
                      { 282: "#34D399" },
                      { 172: "#EECFF3" },
                      { 293: "#F59E0B" },
                      { 183: "#92400E" },
                      { 194: "#60A5FA" },
                      { 470: "#CD6F00" },
                      { 360: "#064E3B" },
                      { 250: "#34D399" },
                      { 371: "#DBEAFE" },
                      { 140: "#EECFF3" },
                      { 261: "#F59E0B" },
                      { 382: "#AE57BB" },
                      { 151: "#92400E" },
                      { 272: "#1E3A8A" },
                      { 393: "#059669" },
                      { 162: "#60A5FA" },
                      { 283: "#A7F3D0" },
                      { 173: "#CF94D8" },
                      { 294: "#CD6F00" },
                      { 184: "#064E3B" },
                      { 195: "#DBEAFE" },
                      { 460: "#EECFF3" },
                      { 350: "#AE57BB" },
                      { 471: "#92400E" },
                      { 240: "#1E3A8A" },
                      { 361: "#059669" },
                      { 130: "#60A5FA" },
                      { 251: "#A7F3D0" },
                      { 372: "#FDE68A" },
                      { 141: "#CF94D8" },
                      { 262: "#CD6F00" },
                      { 383: "#6E3276" },
                      { 152: "#064E3B" },
                      { 273: "#3170F9" },
                      { 394: "#34D399" },
                      { 163: "#DBEAFE" },
                      { 284: "#EECFF3" },
                      { 174: "#AE57BB" },
                      { 295: "#92400E" },
                      { 185: "#059669" },
                      { 196: "#FDE68A" },
                      { 450: "#60A5FA" },
                      { 340: "#FDE68A" },
                      { 461: "#CF94D8" },
                      { 230: "#CD6F00" },
                      { 351: "#6E3276" },
                      { 472: "#064E3B" },
                      { 120: "#064E3B" },
                      { 241: "#3170F9" },
                      { 362: "#34D399" },
                      { 131: "#DBEAFE" },
                      { 252: "#EECFF3" },
                      { 373: "#F59E0B" },
                      { 142: "#AE57BB" },
                      { 263: "#92400E" },
                      { 384: "#1E3A8A" },
                      { 153: "#059669" },
                      { 274: "#60A5FA" },
                      { 395: "#A7F3D0" },
                      { 164: "#FDE68A" },
                      { 285: "#CF94D8" },
                      { 175: "#6E3276" },
                      { 296: "#064E3B" },
                      { 186: "#34D399" },
                      { 197: "#F59E0B" },
                      { 0: "#1E3A8A" },
                      { 440: "#064E3B" },
                      { 330: "#34D399" },
                      { 451: "#DBEAFE" },
                      { 220: "#EECFF3" },
                      { 341: "#F59E0B" },
                      { 462: "#AE57BB" },
                      { 110: "#AE57BB" },
                      { 231: "#92400E" },
                      { 352: "#1E3A8A" },
                      { 473: "#059669" },
                      { 121: "#059669" },
                      { 242: "#60A5FA" },
                      { 363: "#A7F3D0" },
                      { 132: "#FDE68A" },
                      { 253: "#CF94D8" },
                      { 374: "#CD6F00" },
                      { 143: "#6E3276" },
                      { 264: "#064E3B" },
                      { 385: "#3170F9" },
                      { 154: "#34D399" },
                      { 275: "#DBEAFE" },
                      { 396: "#EECFF3" },
                      { 165: "#F59E0B" },
                      { 286: "#AE57BB" },
                      { 176: "#1E3A8A" },
                      { 297: "#059669" },
                      { 187: "#A7F3D0" },
                      { 198: "#CD6F00" },
                      { 1: "#3170F9" },
                      { 430: "#AE57BB" },
                      { 320: "#1E3A8A" },
                      { 441: "#059669" },
                      { 210: "#60A5FA" },
                      { 331: "#A7F3D0" },
                      { 452: "#FDE68A" },
                      { 100: "#FDE68A" },
                      { 221: "#CF94D8" },
                      { 342: "#CD6F00" },
                      { 463: "#6E3276" },
                      { 111: "#6E3276" },
                      { 232: "#064E3B" },
                      { 353: "#3170F9" },
                      { 474: "#34D399" },
                      { 122: "#34D399" },
                      { 243: "#DBEAFE" },
                      { 364: "#EECFF3" },
                      { 133: "#F59E0B" },
                      { 254: "#AE57BB" },
                      { 375: "#92400E" },
                      { 144: "#1E3A8A" },
                      { 265: "#059669" },
                      { 386: "#60A5FA" },
                      { 155: "#A7F3D0" },
                      { 276: "#FDE68A" },
                      { 397: "#CF94D8" },
                      { 166: "#CD6F00" },
                      { 287: "#6E3276" },
                      { 177: "#3170F9" },
                      { 298: "#34D399" },
                      { 188: "#EECFF3" },
                      { 199: "#92400E" },
                      { 2: "#60A5FA" },
                      { 420: "#FDE68A" },
                      { 310: "#CD6F00" },
                      { 431: "#6E3276" },
                      { 200: "#064E3B" },
                      { 321: "#3170F9" },
                      { 442: "#34D399" },
                      { 211: "#DBEAFE" },
                      { 332: "#EECFF3" },
                      { 453: "#F59E0B" },
                      { 101: "#F59E0B" },
                      { 222: "#AE57BB" },
                      { 343: "#92400E" },
                      { 464: "#1E3A8A" },
                      { 112: "#1E3A8A" },
                      { 233: "#059669" },
                      { 354: "#60A5FA" },
                      { 475: "#A7F3D0" },
                      { 123: "#A7F3D0" },
                      { 244: "#FDE68A" },
                      { 365: "#CF94D8" },
                      { 134: "#CD6F00" },
                      { 255: "#6E3276" },
                      { 376: "#064E3B" },
                      { 145: "#3170F9" },
                      { 266: "#34D399" },
                      { 387: "#DBEAFE" },
                      { 156: "#EECFF3" },
                      { 277: "#F59E0B" },
                      { 398: "#AE57BB" },
                      { 167: "#92400E" },
                      { 288: "#1E3A8A" },
                      { 178: "#60A5FA" },
                      { 299: "#A7F3D0" },
                      { 189: "#CF94D8" },
                      { 3: "#DBEAFE" },
                      { 410: "#34D399" },
                      { 300: "#EECFF3" },
                      { 421: "#F59E0B" },
                      { 311: "#92400E" },
                      { 432: "#1E3A8A" },
                      { 201: "#059669" },
                      { 322: "#60A5FA" },
                      { 443: "#A7F3D0" },
                      { 212: "#FDE68A" },
                      { 333: "#CF94D8" },
                      { 454: "#CD6F00" },
                      { 102: "#CD6F00" },
                      { 223: "#6E3276" },
                      { 344: "#064E3B" },
                      { 465: "#3170F9" },
                      { 113: "#3170F9" },
                      { 234: "#34D399" },
                      { 355: "#DBEAFE" },
                      { 476: "#EECFF3" },
                      { 124: "#EECFF3" },
                      { 245: "#F59E0B" },
                      { 366: "#AE57BB" },
                      { 135: "#92400E" },
                      { 256: "#1E3A8A" },
                      { 377: "#059669" },
                      { 146: "#60A5FA" },
                      { 267: "#A7F3D0" },
                      { 388: "#FDE68A" },
                      { 157: "#CF94D8" },
                      { 278: "#CD6F00" },
                      { 399: "#6E3276" },
                      { 168: "#064E3B" },
                      { 289: "#3170F9" },
                      { 179: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 400: "#1E3A8A" },
                      { 411: "#A7F3D0" },
                      { 301: "#CF94D8" },
                      { 422: "#CD6F00" },
                      { 312: "#064E3B" },
                      { 433: "#3170F9" },
                      { 202: "#34D399" },
                      { 323: "#DBEAFE" },
                      { 444: "#EECFF3" },
                      { 213: "#F59E0B" },
                      { 334: "#AE57BB" },
                      { 455: "#92400E" },
                      { 103: "#92400E" },
                      { 224: "#1E3A8A" },
                      { 345: "#059669" },
                      { 466: "#60A5FA" },
                      { 114: "#60A5FA" },
                      { 235: "#A7F3D0" },
                      { 356: "#FDE68A" },
                      { 477: "#CF94D8" },
                      { 125: "#CF94D8" },
                      { 246: "#CD6F00" },
                      { 367: "#6E3276" },
                      { 136: "#064E3B" },
                      { 257: "#3170F9" },
                      { 378: "#34D399" },
                      { 147: "#DBEAFE" },
                      { 268: "#EECFF3" },
                      { 389: "#F59E0B" },
                      { 158: "#AE57BB" },
                      { 279: "#92400E" },
                      { 169: "#059669" },
                      { 5: "#F59E0B" },
                      { 401: "#3170F9" },
                      { 412: "#EECFF3" },
                      { 302: "#AE57BB" },
                      { 423: "#92400E" },
                      { 313: "#059669" },
                      { 434: "#60A5FA" },
                      { 203: "#A7F3D0" },
                      { 324: "#FDE68A" },
                      { 445: "#CF94D8" },
                      { 214: "#CD6F00" },
                      { 335: "#6E3276" },
                      { 456: "#064E3B" },
                      { 104: "#064E3B" },
                      { 225: "#3170F9" },
                      { 346: "#34D399" },
                      { 467: "#DBEAFE" },
                      { 115: "#DBEAFE" },
                      { 236: "#EECFF3" },
                      { 357: "#F59E0B" },
                      { 126: "#AE57BB" },
                      { 247: "#92400E" },
                      { 368: "#1E3A8A" },
                      { 137: "#059669" },
                      { 258: "#60A5FA" },
                      { 379: "#A7F3D0" },
                      { 148: "#FDE68A" },
                      { 269: "#CF94D8" },
                      { 159: "#6E3276" },
                      { 6: "#CD6F00" },
                      { 402: "#60A5FA" },
                      { 413: "#CF94D8" },
                      { 303: "#6E3276" },
                      { 424: "#064E3B" },
                      { 314: "#34D399" },
                      { 435: "#DBEAFE" },
                      { 204: "#EECFF3" },
                      { 325: "#F59E0B" },
                      { 446: "#AE57BB" },
                      { 215: "#92400E" },
                      { 336: "#1E3A8A" },
                      { 457: "#059669" },
                      { 105: "#059669" },
                      { 226: "#60A5FA" },
                      { 347: "#A7F3D0" },
                      { 468: "#FDE68A" },
                      { 116: "#FDE68A" },
                      { 237: "#CF94D8" },
                      { 358: "#CD6F00" },
                      { 127: "#6E3276" },
                      { 248: "#064E3B" },
                      { 369: "#3170F9" },
                      { 138: "#34D399" },
                      { 259: "#DBEAFE" },
                      { 149: "#F59E0B" },
                      { 7: "#92400E" },
                      { 403: "#DBEAFE" },
                      { 414: "#AE57BB" },
                      { 304: "#1E3A8A" },
                      { 425: "#059669" },
                      { 315: "#A7F3D0" },
                      { 436: "#FDE68A" },
                      { 205: "#CF94D8" },
                      { 326: "#CD6F00" },
                      { 447: "#6E3276" },
                      { 216: "#064E3B" },
                      { 337: "#3170F9" },
                      { 458: "#34D399" },
                      { 106: "#34D399" },
                      { 227: "#DBEAFE" },
                      { 348: "#EECFF3" },
                      { 469: "#F59E0B" },
                      { 117: "#F59E0B" },
                      { 238: "#AE57BB" },
                      { 359: "#92400E" },
                      { 128: "#1E3A8A" },
                      { 249: "#059669" },
                      { 139: "#A7F3D0" },
                      { 90: "#34D399" },
                      { 8: "#064E3B" },
                      { 404: "#FDE68A" },
                      { 415: "#6E3276" },
                      { 305: "#3170F9" },
                      { 426: "#34D399" },
                      { 316: "#EECFF3" },
                      { 437: "#F59E0B" },
                      { 206: "#AE57BB" },
                      { 327: "#92400E" },
                      { 448: "#1E3A8A" },
                      { 217: "#059669" },
                      { 338: "#60A5FA" },
                      { 459: "#A7F3D0" },
                      { 107: "#A7F3D0" },
                      { 228: "#FDE68A" },
                      { 349: "#CF94D8" },
                      { 118: "#CD6F00" },
                      { 239: "#6E3276" },
                      { 129: "#3170F9" },
                      { 80: "#1E3A8A" },
                      { 91: "#A7F3D0" },
                      { 9: "#059669" },
                      { 405: "#F59E0B" },
                      { 416: "#1E3A8A" },
                      { 306: "#60A5FA" },
                      { 427: "#A7F3D0" },
                      { 317: "#CF94D8" },
                      { 438: "#CD6F00" },
                      { 207: "#6E3276" },
                      { 328: "#064E3B" },
                      { 449: "#3170F9" },
                      { 218: "#34D399" },
                      { 339: "#DBEAFE" },
                      { 108: "#EECFF3" },
                      { 229: "#F59E0B" },
                      { 119: "#92400E" },
                      { 70: "#CD6F00" },
                      { 81: "#3170F9" },
                      { 92: "#EECFF3" },
                      { 406: "#CD6F00" },
                      { 417: "#3170F9" },
                      { 307: "#DBEAFE" },
                      { 428: "#EECFF3" },
                      { 318: "#AE57BB" },
                      { 439: "#92400E" },
                      { 208: "#1E3A8A" },
                      { 329: "#059669" },
                      { 219: "#A7F3D0" },
                      { 109: "#CF94D8" },
                      { 60: "#EECFF3" },
                      { 71: "#92400E" },
                      { 82: "#60A5FA" },
                      { 93: "#CF94D8" },
                      { 407: "#92400E" },
                      { 418: "#60A5FA" },
                      { 308: "#FDE68A" },
                      { 429: "#CF94D8" },
                      { 319: "#6E3276" },
                      { 209: "#3170F9" },
                      { 50: "#60A5FA" },
                      { 61: "#CF94D8" },
                      { 72: "#064E3B" },
                      { 83: "#DBEAFE" },
                      { 94: "#AE57BB" },
                      { 408: "#064E3B" },
                      { 419: "#DBEAFE" },
                      { 309: "#F59E0B" },
                      { 40: "#064E3B" },
                      { 51: "#DBEAFE" },
                      { 62: "#AE57BB" },
                      { 73: "#059669" },
                      { 84: "#FDE68A" },
                      { 95: "#6E3276" },
                      { 409: "#059669" },
                      { 30: "#AE57BB" },
                      { 41: "#059669" },
                      { 52: "#FDE68A" },
                      { 63: "#6E3276" },
                      { 74: "#34D399" },
                      { 85: "#F59E0B" },
                      { 96: "#1E3A8A" },
                      { 20: "#FDE68A" },
                      { 31: "#6E3276" },
                      { 42: "#34D399" },
                      { 53: "#F59E0B" },
                      { 64: "#1E3A8A" },
                      { 75: "#A7F3D0" },
                      { 86: "#CD6F00" },
                      { 97: "#3170F9" },
                      { 10: "#34D399" },
                      { 21: "#F59E0B" },
                      { 32: "#1E3A8A" },
                      { 43: "#A7F3D0" },
                      { 54: "#CD6F00" },
                      { 65: "#3170F9" },
                      { 76: "#EECFF3" },
                      { 87: "#92400E" },
                      { 98: "#60A5FA" },
                    ],
                  },
                },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "custid" },
                {
                  datasource:
                    "{{formatDataAsObject(getSalesOrderData.data)['custid']}}",
                },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 11: "#A7F3D0" },
                      { 22: "#CD6F00" },
                      { 33: "#3170F9" },
                      { 44: "#EECFF3" },
                      { 55: "#92400E" },
                      { 66: "#60A5FA" },
                      { 77: "#CF94D8" },
                      { 88: "#064E3B" },
                      { 99: "#DBEAFE" },
                      { 12: "#EECFF3" },
                      { 23: "#92400E" },
                      { 34: "#60A5FA" },
                      { 45: "#CF94D8" },
                      { 56: "#064E3B" },
                      { 67: "#DBEAFE" },
                      { 78: "#AE57BB" },
                      { 89: "#059669" },
                      { 13: "#CF94D8" },
                      { 24: "#064E3B" },
                      { 35: "#DBEAFE" },
                      { 46: "#AE57BB" },
                      { 57: "#059669" },
                      { 68: "#FDE68A" },
                      { 79: "#6E3276" },
                      { 14: "#AE57BB" },
                      { 25: "#059669" },
                      { 36: "#FDE68A" },
                      { 47: "#6E3276" },
                      { 58: "#34D399" },
                      { 69: "#F59E0B" },
                      { 15: "#6E3276" },
                      { 26: "#34D399" },
                      { 37: "#F59E0B" },
                      { 48: "#1E3A8A" },
                      { 59: "#A7F3D0" },
                      { 16: "#1E3A8A" },
                      { 27: "#A7F3D0" },
                      { 38: "#CD6F00" },
                      { 49: "#3170F9" },
                      { 17: "#3170F9" },
                      { 28: "#EECFF3" },
                      { 39: "#92400E" },
                      { 18: "#60A5FA" },
                      { 29: "#CF94D8" },
                      { 19: "#DBEAFE" },
                      { 190: "#AE57BB" },
                      { 290: "#60A5FA" },
                      { 180: "#FDE68A" },
                      { 191: "#6E3276" },
                      { 390: "#CD6F00" },
                      { 280: "#064E3B" },
                      { 170: "#34D399" },
                      { 291: "#DBEAFE" },
                      { 181: "#F59E0B" },
                      { 192: "#1E3A8A" },
                      { 380: "#EECFF3" },
                      { 270: "#AE57BB" },
                      { 391: "#92400E" },
                      { 160: "#1E3A8A" },
                      { 281: "#059669" },
                      { 171: "#A7F3D0" },
                      { 292: "#FDE68A" },
                      { 182: "#CD6F00" },
                      { 193: "#3170F9" },
                      { 370: "#60A5FA" },
                      { 260: "#FDE68A" },
                      { 381: "#CF94D8" },
                      { 150: "#CD6F00" },
                      { 271: "#6E3276" },
                      { 392: "#064E3B" },
                      { 161: "#3170F9" },
                      { 282: "#34D399" },
                      { 172: "#EECFF3" },
                      { 293: "#F59E0B" },
                      { 183: "#92400E" },
                      { 194: "#60A5FA" },
                      { 470: "#CD6F00" },
                      { 360: "#064E3B" },
                      { 250: "#34D399" },
                      { 371: "#DBEAFE" },
                      { 140: "#EECFF3" },
                      { 261: "#F59E0B" },
                      { 382: "#AE57BB" },
                      { 151: "#92400E" },
                      { 272: "#1E3A8A" },
                      { 393: "#059669" },
                      { 162: "#60A5FA" },
                      { 283: "#A7F3D0" },
                      { 173: "#CF94D8" },
                      { 294: "#CD6F00" },
                      { 184: "#064E3B" },
                      { 195: "#DBEAFE" },
                      { 460: "#EECFF3" },
                      { 350: "#AE57BB" },
                      { 471: "#92400E" },
                      { 240: "#1E3A8A" },
                      { 361: "#059669" },
                      { 130: "#60A5FA" },
                      { 251: "#A7F3D0" },
                      { 372: "#FDE68A" },
                      { 141: "#CF94D8" },
                      { 262: "#CD6F00" },
                      { 383: "#6E3276" },
                      { 152: "#064E3B" },
                      { 273: "#3170F9" },
                      { 394: "#34D399" },
                      { 163: "#DBEAFE" },
                      { 284: "#EECFF3" },
                      { 174: "#AE57BB" },
                      { 295: "#92400E" },
                      { 185: "#059669" },
                      { 196: "#FDE68A" },
                      { 450: "#60A5FA" },
                      { 340: "#FDE68A" },
                      { 461: "#CF94D8" },
                      { 230: "#CD6F00" },
                      { 351: "#6E3276" },
                      { 472: "#064E3B" },
                      { 120: "#064E3B" },
                      { 241: "#3170F9" },
                      { 362: "#34D399" },
                      { 131: "#DBEAFE" },
                      { 252: "#EECFF3" },
                      { 373: "#F59E0B" },
                      { 142: "#AE57BB" },
                      { 263: "#92400E" },
                      { 384: "#1E3A8A" },
                      { 153: "#059669" },
                      { 274: "#60A5FA" },
                      { 395: "#A7F3D0" },
                      { 164: "#FDE68A" },
                      { 285: "#CF94D8" },
                      { 175: "#6E3276" },
                      { 296: "#064E3B" },
                      { 186: "#34D399" },
                      { 197: "#F59E0B" },
                      { 0: "#1E3A8A" },
                      { 440: "#064E3B" },
                      { 330: "#34D399" },
                      { 451: "#DBEAFE" },
                      { 220: "#EECFF3" },
                      { 341: "#F59E0B" },
                      { 462: "#AE57BB" },
                      { 110: "#AE57BB" },
                      { 231: "#92400E" },
                      { 352: "#1E3A8A" },
                      { 473: "#059669" },
                      { 121: "#059669" },
                      { 242: "#60A5FA" },
                      { 363: "#A7F3D0" },
                      { 132: "#FDE68A" },
                      { 253: "#CF94D8" },
                      { 374: "#CD6F00" },
                      { 143: "#6E3276" },
                      { 264: "#064E3B" },
                      { 385: "#3170F9" },
                      { 154: "#34D399" },
                      { 275: "#DBEAFE" },
                      { 396: "#EECFF3" },
                      { 165: "#F59E0B" },
                      { 286: "#AE57BB" },
                      { 176: "#1E3A8A" },
                      { 297: "#059669" },
                      { 187: "#A7F3D0" },
                      { 198: "#CD6F00" },
                      { 1: "#3170F9" },
                      { 430: "#AE57BB" },
                      { 320: "#1E3A8A" },
                      { 441: "#059669" },
                      { 210: "#60A5FA" },
                      { 331: "#A7F3D0" },
                      { 452: "#FDE68A" },
                      { 100: "#FDE68A" },
                      { 221: "#CF94D8" },
                      { 342: "#CD6F00" },
                      { 463: "#6E3276" },
                      { 111: "#6E3276" },
                      { 232: "#064E3B" },
                      { 353: "#3170F9" },
                      { 474: "#34D399" },
                      { 122: "#34D399" },
                      { 243: "#DBEAFE" },
                      { 364: "#EECFF3" },
                      { 133: "#F59E0B" },
                      { 254: "#AE57BB" },
                      { 375: "#92400E" },
                      { 144: "#1E3A8A" },
                      { 265: "#059669" },
                      { 386: "#60A5FA" },
                      { 155: "#A7F3D0" },
                      { 276: "#FDE68A" },
                      { 397: "#CF94D8" },
                      { 166: "#CD6F00" },
                      { 287: "#6E3276" },
                      { 177: "#3170F9" },
                      { 298: "#34D399" },
                      { 188: "#EECFF3" },
                      { 199: "#92400E" },
                      { 2: "#60A5FA" },
                      { 420: "#FDE68A" },
                      { 310: "#CD6F00" },
                      { 431: "#6E3276" },
                      { 200: "#064E3B" },
                      { 321: "#3170F9" },
                      { 442: "#34D399" },
                      { 211: "#DBEAFE" },
                      { 332: "#EECFF3" },
                      { 453: "#F59E0B" },
                      { 101: "#F59E0B" },
                      { 222: "#AE57BB" },
                      { 343: "#92400E" },
                      { 464: "#1E3A8A" },
                      { 112: "#1E3A8A" },
                      { 233: "#059669" },
                      { 354: "#60A5FA" },
                      { 475: "#A7F3D0" },
                      { 123: "#A7F3D0" },
                      { 244: "#FDE68A" },
                      { 365: "#CF94D8" },
                      { 134: "#CD6F00" },
                      { 255: "#6E3276" },
                      { 376: "#064E3B" },
                      { 145: "#3170F9" },
                      { 266: "#34D399" },
                      { 387: "#DBEAFE" },
                      { 156: "#EECFF3" },
                      { 277: "#F59E0B" },
                      { 398: "#AE57BB" },
                      { 167: "#92400E" },
                      { 288: "#1E3A8A" },
                      { 178: "#60A5FA" },
                      { 299: "#A7F3D0" },
                      { 189: "#CF94D8" },
                      { 3: "#DBEAFE" },
                      { 410: "#34D399" },
                      { 300: "#EECFF3" },
                      { 421: "#F59E0B" },
                      { 311: "#92400E" },
                      { 432: "#1E3A8A" },
                      { 201: "#059669" },
                      { 322: "#60A5FA" },
                      { 443: "#A7F3D0" },
                      { 212: "#FDE68A" },
                      { 333: "#CF94D8" },
                      { 454: "#CD6F00" },
                      { 102: "#CD6F00" },
                      { 223: "#6E3276" },
                      { 344: "#064E3B" },
                      { 465: "#3170F9" },
                      { 113: "#3170F9" },
                      { 234: "#34D399" },
                      { 355: "#DBEAFE" },
                      { 476: "#EECFF3" },
                      { 124: "#EECFF3" },
                      { 245: "#F59E0B" },
                      { 366: "#AE57BB" },
                      { 135: "#92400E" },
                      { 256: "#1E3A8A" },
                      { 377: "#059669" },
                      { 146: "#60A5FA" },
                      { 267: "#A7F3D0" },
                      { 388: "#FDE68A" },
                      { 157: "#CF94D8" },
                      { 278: "#CD6F00" },
                      { 399: "#6E3276" },
                      { 168: "#064E3B" },
                      { 289: "#3170F9" },
                      { 179: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 400: "#1E3A8A" },
                      { 411: "#A7F3D0" },
                      { 301: "#CF94D8" },
                      { 422: "#CD6F00" },
                      { 312: "#064E3B" },
                      { 433: "#3170F9" },
                      { 202: "#34D399" },
                      { 323: "#DBEAFE" },
                      { 444: "#EECFF3" },
                      { 213: "#F59E0B" },
                      { 334: "#AE57BB" },
                      { 455: "#92400E" },
                      { 103: "#92400E" },
                      { 224: "#1E3A8A" },
                      { 345: "#059669" },
                      { 466: "#60A5FA" },
                      { 114: "#60A5FA" },
                      { 235: "#A7F3D0" },
                      { 356: "#FDE68A" },
                      { 477: "#CF94D8" },
                      { 125: "#CF94D8" },
                      { 246: "#CD6F00" },
                      { 367: "#6E3276" },
                      { 136: "#064E3B" },
                      { 257: "#3170F9" },
                      { 378: "#34D399" },
                      { 147: "#DBEAFE" },
                      { 268: "#EECFF3" },
                      { 389: "#F59E0B" },
                      { 158: "#AE57BB" },
                      { 279: "#92400E" },
                      { 169: "#059669" },
                      { 5: "#F59E0B" },
                      { 401: "#3170F9" },
                      { 412: "#EECFF3" },
                      { 302: "#AE57BB" },
                      { 423: "#92400E" },
                      { 313: "#059669" },
                      { 434: "#60A5FA" },
                      { 203: "#A7F3D0" },
                      { 324: "#FDE68A" },
                      { 445: "#CF94D8" },
                      { 214: "#CD6F00" },
                      { 335: "#6E3276" },
                      { 456: "#064E3B" },
                      { 104: "#064E3B" },
                      { 225: "#3170F9" },
                      { 346: "#34D399" },
                      { 467: "#DBEAFE" },
                      { 115: "#DBEAFE" },
                      { 236: "#EECFF3" },
                      { 357: "#F59E0B" },
                      { 126: "#AE57BB" },
                      { 247: "#92400E" },
                      { 368: "#1E3A8A" },
                      { 137: "#059669" },
                      { 258: "#60A5FA" },
                      { 379: "#A7F3D0" },
                      { 148: "#FDE68A" },
                      { 269: "#CF94D8" },
                      { 159: "#6E3276" },
                      { 6: "#CD6F00" },
                      { 402: "#60A5FA" },
                      { 413: "#CF94D8" },
                      { 303: "#6E3276" },
                      { 424: "#064E3B" },
                      { 314: "#34D399" },
                      { 435: "#DBEAFE" },
                      { 204: "#EECFF3" },
                      { 325: "#F59E0B" },
                      { 446: "#AE57BB" },
                      { 215: "#92400E" },
                      { 336: "#1E3A8A" },
                      { 457: "#059669" },
                      { 105: "#059669" },
                      { 226: "#60A5FA" },
                      { 347: "#A7F3D0" },
                      { 468: "#FDE68A" },
                      { 116: "#FDE68A" },
                      { 237: "#CF94D8" },
                      { 358: "#CD6F00" },
                      { 127: "#6E3276" },
                      { 248: "#064E3B" },
                      { 369: "#3170F9" },
                      { 138: "#34D399" },
                      { 259: "#DBEAFE" },
                      { 149: "#F59E0B" },
                      { 7: "#92400E" },
                      { 403: "#DBEAFE" },
                      { 414: "#AE57BB" },
                      { 304: "#1E3A8A" },
                      { 425: "#059669" },
                      { 315: "#A7F3D0" },
                      { 436: "#FDE68A" },
                      { 205: "#CF94D8" },
                      { 326: "#CD6F00" },
                      { 447: "#6E3276" },
                      { 216: "#064E3B" },
                      { 337: "#3170F9" },
                      { 458: "#34D399" },
                      { 106: "#34D399" },
                      { 227: "#DBEAFE" },
                      { 348: "#EECFF3" },
                      { 469: "#F59E0B" },
                      { 117: "#F59E0B" },
                      { 238: "#AE57BB" },
                      { 359: "#92400E" },
                      { 128: "#1E3A8A" },
                      { 249: "#059669" },
                      { 139: "#A7F3D0" },
                      { 90: "#34D399" },
                      { 8: "#064E3B" },
                      { 404: "#FDE68A" },
                      { 415: "#6E3276" },
                      { 305: "#3170F9" },
                      { 426: "#34D399" },
                      { 316: "#EECFF3" },
                      { 437: "#F59E0B" },
                      { 206: "#AE57BB" },
                      { 327: "#92400E" },
                      { 448: "#1E3A8A" },
                      { 217: "#059669" },
                      { 338: "#60A5FA" },
                      { 459: "#A7F3D0" },
                      { 107: "#A7F3D0" },
                      { 228: "#FDE68A" },
                      { 349: "#CF94D8" },
                      { 118: "#CD6F00" },
                      { 239: "#6E3276" },
                      { 129: "#3170F9" },
                      { 80: "#1E3A8A" },
                      { 91: "#A7F3D0" },
                      { 9: "#059669" },
                      { 405: "#F59E0B" },
                      { 416: "#1E3A8A" },
                      { 306: "#60A5FA" },
                      { 427: "#A7F3D0" },
                      { 317: "#CF94D8" },
                      { 438: "#CD6F00" },
                      { 207: "#6E3276" },
                      { 328: "#064E3B" },
                      { 449: "#3170F9" },
                      { 218: "#34D399" },
                      { 339: "#DBEAFE" },
                      { 108: "#EECFF3" },
                      { 229: "#F59E0B" },
                      { 119: "#92400E" },
                      { 70: "#CD6F00" },
                      { 81: "#3170F9" },
                      { 92: "#EECFF3" },
                      { 406: "#CD6F00" },
                      { 417: "#3170F9" },
                      { 307: "#DBEAFE" },
                      { 428: "#EECFF3" },
                      { 318: "#AE57BB" },
                      { 439: "#92400E" },
                      { 208: "#1E3A8A" },
                      { 329: "#059669" },
                      { 219: "#A7F3D0" },
                      { 109: "#CF94D8" },
                      { 60: "#EECFF3" },
                      { 71: "#92400E" },
                      { 82: "#60A5FA" },
                      { 93: "#CF94D8" },
                      { 407: "#92400E" },
                      { 418: "#60A5FA" },
                      { 308: "#FDE68A" },
                      { 429: "#CF94D8" },
                      { 319: "#6E3276" },
                      { 209: "#3170F9" },
                      { 50: "#60A5FA" },
                      { 61: "#CF94D8" },
                      { 72: "#064E3B" },
                      { 83: "#DBEAFE" },
                      { 94: "#AE57BB" },
                      { 408: "#064E3B" },
                      { 419: "#DBEAFE" },
                      { 309: "#F59E0B" },
                      { 40: "#064E3B" },
                      { 51: "#DBEAFE" },
                      { 62: "#AE57BB" },
                      { 73: "#059669" },
                      { 84: "#FDE68A" },
                      { 95: "#6E3276" },
                      { 409: "#059669" },
                      { 30: "#AE57BB" },
                      { 41: "#059669" },
                      { 52: "#FDE68A" },
                      { 63: "#6E3276" },
                      { 74: "#34D399" },
                      { 85: "#F59E0B" },
                      { 96: "#1E3A8A" },
                      { 20: "#FDE68A" },
                      { 31: "#6E3276" },
                      { 42: "#34D399" },
                      { 53: "#F59E0B" },
                      { 64: "#1E3A8A" },
                      { 75: "#A7F3D0" },
                      { 86: "#CD6F00" },
                      { 97: "#3170F9" },
                      { 10: "#34D399" },
                      { 21: "#F59E0B" },
                      { 32: "#1E3A8A" },
                      { 43: "#A7F3D0" },
                      { 54: "#CD6F00" },
                      { 65: "#3170F9" },
                      { 76: "#EECFF3" },
                      { 87: "#92400E" },
                      { 98: "#60A5FA" },
                    ],
                  },
                },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            2: {
              ordered: [
                { label: "empid" },
                {
                  datasource:
                    "{{formatDataAsObject(getSalesOrderData.data)['empid']}}",
                },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 11: "#A7F3D0" },
                      { 22: "#CD6F00" },
                      { 33: "#3170F9" },
                      { 44: "#EECFF3" },
                      { 55: "#92400E" },
                      { 66: "#60A5FA" },
                      { 77: "#CF94D8" },
                      { 88: "#064E3B" },
                      { 99: "#DBEAFE" },
                      { 12: "#EECFF3" },
                      { 23: "#92400E" },
                      { 34: "#60A5FA" },
                      { 45: "#CF94D8" },
                      { 56: "#064E3B" },
                      { 67: "#DBEAFE" },
                      { 78: "#AE57BB" },
                      { 89: "#059669" },
                      { 13: "#CF94D8" },
                      { 24: "#064E3B" },
                      { 35: "#DBEAFE" },
                      { 46: "#AE57BB" },
                      { 57: "#059669" },
                      { 68: "#FDE68A" },
                      { 79: "#6E3276" },
                      { 14: "#AE57BB" },
                      { 25: "#059669" },
                      { 36: "#FDE68A" },
                      { 47: "#6E3276" },
                      { 58: "#34D399" },
                      { 69: "#F59E0B" },
                      { 15: "#6E3276" },
                      { 26: "#34D399" },
                      { 37: "#F59E0B" },
                      { 48: "#1E3A8A" },
                      { 59: "#A7F3D0" },
                      { 16: "#1E3A8A" },
                      { 27: "#A7F3D0" },
                      { 38: "#CD6F00" },
                      { 49: "#3170F9" },
                      { 17: "#3170F9" },
                      { 28: "#EECFF3" },
                      { 39: "#92400E" },
                      { 18: "#60A5FA" },
                      { 29: "#CF94D8" },
                      { 19: "#DBEAFE" },
                      { 190: "#AE57BB" },
                      { 290: "#60A5FA" },
                      { 180: "#FDE68A" },
                      { 191: "#6E3276" },
                      { 390: "#CD6F00" },
                      { 280: "#064E3B" },
                      { 170: "#34D399" },
                      { 291: "#DBEAFE" },
                      { 181: "#F59E0B" },
                      { 192: "#1E3A8A" },
                      { 380: "#EECFF3" },
                      { 270: "#AE57BB" },
                      { 391: "#92400E" },
                      { 160: "#1E3A8A" },
                      { 281: "#059669" },
                      { 171: "#A7F3D0" },
                      { 292: "#FDE68A" },
                      { 182: "#CD6F00" },
                      { 193: "#3170F9" },
                      { 370: "#60A5FA" },
                      { 260: "#FDE68A" },
                      { 381: "#CF94D8" },
                      { 150: "#CD6F00" },
                      { 271: "#6E3276" },
                      { 392: "#064E3B" },
                      { 161: "#3170F9" },
                      { 282: "#34D399" },
                      { 172: "#EECFF3" },
                      { 293: "#F59E0B" },
                      { 183: "#92400E" },
                      { 194: "#60A5FA" },
                      { 470: "#CD6F00" },
                      { 360: "#064E3B" },
                      { 250: "#34D399" },
                      { 371: "#DBEAFE" },
                      { 140: "#EECFF3" },
                      { 261: "#F59E0B" },
                      { 382: "#AE57BB" },
                      { 151: "#92400E" },
                      { 272: "#1E3A8A" },
                      { 393: "#059669" },
                      { 162: "#60A5FA" },
                      { 283: "#A7F3D0" },
                      { 173: "#CF94D8" },
                      { 294: "#CD6F00" },
                      { 184: "#064E3B" },
                      { 195: "#DBEAFE" },
                      { 460: "#EECFF3" },
                      { 350: "#AE57BB" },
                      { 471: "#92400E" },
                      { 240: "#1E3A8A" },
                      { 361: "#059669" },
                      { 130: "#60A5FA" },
                      { 251: "#A7F3D0" },
                      { 372: "#FDE68A" },
                      { 141: "#CF94D8" },
                      { 262: "#CD6F00" },
                      { 383: "#6E3276" },
                      { 152: "#064E3B" },
                      { 273: "#3170F9" },
                      { 394: "#34D399" },
                      { 163: "#DBEAFE" },
                      { 284: "#EECFF3" },
                      { 174: "#AE57BB" },
                      { 295: "#92400E" },
                      { 185: "#059669" },
                      { 196: "#FDE68A" },
                      { 450: "#60A5FA" },
                      { 340: "#FDE68A" },
                      { 461: "#CF94D8" },
                      { 230: "#CD6F00" },
                      { 351: "#6E3276" },
                      { 472: "#064E3B" },
                      { 120: "#064E3B" },
                      { 241: "#3170F9" },
                      { 362: "#34D399" },
                      { 131: "#DBEAFE" },
                      { 252: "#EECFF3" },
                      { 373: "#F59E0B" },
                      { 142: "#AE57BB" },
                      { 263: "#92400E" },
                      { 384: "#1E3A8A" },
                      { 153: "#059669" },
                      { 274: "#60A5FA" },
                      { 395: "#A7F3D0" },
                      { 164: "#FDE68A" },
                      { 285: "#CF94D8" },
                      { 175: "#6E3276" },
                      { 296: "#064E3B" },
                      { 186: "#34D399" },
                      { 197: "#F59E0B" },
                      { 0: "#1E3A8A" },
                      { 440: "#064E3B" },
                      { 330: "#34D399" },
                      { 451: "#DBEAFE" },
                      { 220: "#EECFF3" },
                      { 341: "#F59E0B" },
                      { 462: "#AE57BB" },
                      { 110: "#AE57BB" },
                      { 231: "#92400E" },
                      { 352: "#1E3A8A" },
                      { 473: "#059669" },
                      { 121: "#059669" },
                      { 242: "#60A5FA" },
                      { 363: "#A7F3D0" },
                      { 132: "#FDE68A" },
                      { 253: "#CF94D8" },
                      { 374: "#CD6F00" },
                      { 143: "#6E3276" },
                      { 264: "#064E3B" },
                      { 385: "#3170F9" },
                      { 154: "#34D399" },
                      { 275: "#DBEAFE" },
                      { 396: "#EECFF3" },
                      { 165: "#F59E0B" },
                      { 286: "#AE57BB" },
                      { 176: "#1E3A8A" },
                      { 297: "#059669" },
                      { 187: "#A7F3D0" },
                      { 198: "#CD6F00" },
                      { 1: "#3170F9" },
                      { 430: "#AE57BB" },
                      { 320: "#1E3A8A" },
                      { 441: "#059669" },
                      { 210: "#60A5FA" },
                      { 331: "#A7F3D0" },
                      { 452: "#FDE68A" },
                      { 100: "#FDE68A" },
                      { 221: "#CF94D8" },
                      { 342: "#CD6F00" },
                      { 463: "#6E3276" },
                      { 111: "#6E3276" },
                      { 232: "#064E3B" },
                      { 353: "#3170F9" },
                      { 474: "#34D399" },
                      { 122: "#34D399" },
                      { 243: "#DBEAFE" },
                      { 364: "#EECFF3" },
                      { 133: "#F59E0B" },
                      { 254: "#AE57BB" },
                      { 375: "#92400E" },
                      { 144: "#1E3A8A" },
                      { 265: "#059669" },
                      { 386: "#60A5FA" },
                      { 155: "#A7F3D0" },
                      { 276: "#FDE68A" },
                      { 397: "#CF94D8" },
                      { 166: "#CD6F00" },
                      { 287: "#6E3276" },
                      { 177: "#3170F9" },
                      { 298: "#34D399" },
                      { 188: "#EECFF3" },
                      { 199: "#92400E" },
                      { 2: "#60A5FA" },
                      { 420: "#FDE68A" },
                      { 310: "#CD6F00" },
                      { 431: "#6E3276" },
                      { 200: "#064E3B" },
                      { 321: "#3170F9" },
                      { 442: "#34D399" },
                      { 211: "#DBEAFE" },
                      { 332: "#EECFF3" },
                      { 453: "#F59E0B" },
                      { 101: "#F59E0B" },
                      { 222: "#AE57BB" },
                      { 343: "#92400E" },
                      { 464: "#1E3A8A" },
                      { 112: "#1E3A8A" },
                      { 233: "#059669" },
                      { 354: "#60A5FA" },
                      { 475: "#A7F3D0" },
                      { 123: "#A7F3D0" },
                      { 244: "#FDE68A" },
                      { 365: "#CF94D8" },
                      { 134: "#CD6F00" },
                      { 255: "#6E3276" },
                      { 376: "#064E3B" },
                      { 145: "#3170F9" },
                      { 266: "#34D399" },
                      { 387: "#DBEAFE" },
                      { 156: "#EECFF3" },
                      { 277: "#F59E0B" },
                      { 398: "#AE57BB" },
                      { 167: "#92400E" },
                      { 288: "#1E3A8A" },
                      { 178: "#60A5FA" },
                      { 299: "#A7F3D0" },
                      { 189: "#CF94D8" },
                      { 3: "#DBEAFE" },
                      { 410: "#34D399" },
                      { 300: "#EECFF3" },
                      { 421: "#F59E0B" },
                      { 311: "#92400E" },
                      { 432: "#1E3A8A" },
                      { 201: "#059669" },
                      { 322: "#60A5FA" },
                      { 443: "#A7F3D0" },
                      { 212: "#FDE68A" },
                      { 333: "#CF94D8" },
                      { 454: "#CD6F00" },
                      { 102: "#CD6F00" },
                      { 223: "#6E3276" },
                      { 344: "#064E3B" },
                      { 465: "#3170F9" },
                      { 113: "#3170F9" },
                      { 234: "#34D399" },
                      { 355: "#DBEAFE" },
                      { 476: "#EECFF3" },
                      { 124: "#EECFF3" },
                      { 245: "#F59E0B" },
                      { 366: "#AE57BB" },
                      { 135: "#92400E" },
                      { 256: "#1E3A8A" },
                      { 377: "#059669" },
                      { 146: "#60A5FA" },
                      { 267: "#A7F3D0" },
                      { 388: "#FDE68A" },
                      { 157: "#CF94D8" },
                      { 278: "#CD6F00" },
                      { 399: "#6E3276" },
                      { 168: "#064E3B" },
                      { 289: "#3170F9" },
                      { 179: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 400: "#1E3A8A" },
                      { 411: "#A7F3D0" },
                      { 301: "#CF94D8" },
                      { 422: "#CD6F00" },
                      { 312: "#064E3B" },
                      { 433: "#3170F9" },
                      { 202: "#34D399" },
                      { 323: "#DBEAFE" },
                      { 444: "#EECFF3" },
                      { 213: "#F59E0B" },
                      { 334: "#AE57BB" },
                      { 455: "#92400E" },
                      { 103: "#92400E" },
                      { 224: "#1E3A8A" },
                      { 345: "#059669" },
                      { 466: "#60A5FA" },
                      { 114: "#60A5FA" },
                      { 235: "#A7F3D0" },
                      { 356: "#FDE68A" },
                      { 477: "#CF94D8" },
                      { 125: "#CF94D8" },
                      { 246: "#CD6F00" },
                      { 367: "#6E3276" },
                      { 136: "#064E3B" },
                      { 257: "#3170F9" },
                      { 378: "#34D399" },
                      { 147: "#DBEAFE" },
                      { 268: "#EECFF3" },
                      { 389: "#F59E0B" },
                      { 158: "#AE57BB" },
                      { 279: "#92400E" },
                      { 169: "#059669" },
                      { 5: "#F59E0B" },
                      { 401: "#3170F9" },
                      { 412: "#EECFF3" },
                      { 302: "#AE57BB" },
                      { 423: "#92400E" },
                      { 313: "#059669" },
                      { 434: "#60A5FA" },
                      { 203: "#A7F3D0" },
                      { 324: "#FDE68A" },
                      { 445: "#CF94D8" },
                      { 214: "#CD6F00" },
                      { 335: "#6E3276" },
                      { 456: "#064E3B" },
                      { 104: "#064E3B" },
                      { 225: "#3170F9" },
                      { 346: "#34D399" },
                      { 467: "#DBEAFE" },
                      { 115: "#DBEAFE" },
                      { 236: "#EECFF3" },
                      { 357: "#F59E0B" },
                      { 126: "#AE57BB" },
                      { 247: "#92400E" },
                      { 368: "#1E3A8A" },
                      { 137: "#059669" },
                      { 258: "#60A5FA" },
                      { 379: "#A7F3D0" },
                      { 148: "#FDE68A" },
                      { 269: "#CF94D8" },
                      { 159: "#6E3276" },
                      { 6: "#CD6F00" },
                      { 402: "#60A5FA" },
                      { 413: "#CF94D8" },
                      { 303: "#6E3276" },
                      { 424: "#064E3B" },
                      { 314: "#34D399" },
                      { 435: "#DBEAFE" },
                      { 204: "#EECFF3" },
                      { 325: "#F59E0B" },
                      { 446: "#AE57BB" },
                      { 215: "#92400E" },
                      { 336: "#1E3A8A" },
                      { 457: "#059669" },
                      { 105: "#059669" },
                      { 226: "#60A5FA" },
                      { 347: "#A7F3D0" },
                      { 468: "#FDE68A" },
                      { 116: "#FDE68A" },
                      { 237: "#CF94D8" },
                      { 358: "#CD6F00" },
                      { 127: "#6E3276" },
                      { 248: "#064E3B" },
                      { 369: "#3170F9" },
                      { 138: "#34D399" },
                      { 259: "#DBEAFE" },
                      { 149: "#F59E0B" },
                      { 7: "#92400E" },
                      { 403: "#DBEAFE" },
                      { 414: "#AE57BB" },
                      { 304: "#1E3A8A" },
                      { 425: "#059669" },
                      { 315: "#A7F3D0" },
                      { 436: "#FDE68A" },
                      { 205: "#CF94D8" },
                      { 326: "#CD6F00" },
                      { 447: "#6E3276" },
                      { 216: "#064E3B" },
                      { 337: "#3170F9" },
                      { 458: "#34D399" },
                      { 106: "#34D399" },
                      { 227: "#DBEAFE" },
                      { 348: "#EECFF3" },
                      { 469: "#F59E0B" },
                      { 117: "#F59E0B" },
                      { 238: "#AE57BB" },
                      { 359: "#92400E" },
                      { 128: "#1E3A8A" },
                      { 249: "#059669" },
                      { 139: "#A7F3D0" },
                      { 90: "#34D399" },
                      { 8: "#064E3B" },
                      { 404: "#FDE68A" },
                      { 415: "#6E3276" },
                      { 305: "#3170F9" },
                      { 426: "#34D399" },
                      { 316: "#EECFF3" },
                      { 437: "#F59E0B" },
                      { 206: "#AE57BB" },
                      { 327: "#92400E" },
                      { 448: "#1E3A8A" },
                      { 217: "#059669" },
                      { 338: "#60A5FA" },
                      { 459: "#A7F3D0" },
                      { 107: "#A7F3D0" },
                      { 228: "#FDE68A" },
                      { 349: "#CF94D8" },
                      { 118: "#CD6F00" },
                      { 239: "#6E3276" },
                      { 129: "#3170F9" },
                      { 80: "#1E3A8A" },
                      { 91: "#A7F3D0" },
                      { 9: "#059669" },
                      { 405: "#F59E0B" },
                      { 416: "#1E3A8A" },
                      { 306: "#60A5FA" },
                      { 427: "#A7F3D0" },
                      { 317: "#CF94D8" },
                      { 438: "#CD6F00" },
                      { 207: "#6E3276" },
                      { 328: "#064E3B" },
                      { 449: "#3170F9" },
                      { 218: "#34D399" },
                      { 339: "#DBEAFE" },
                      { 108: "#EECFF3" },
                      { 229: "#F59E0B" },
                      { 119: "#92400E" },
                      { 70: "#CD6F00" },
                      { 81: "#3170F9" },
                      { 92: "#EECFF3" },
                      { 406: "#CD6F00" },
                      { 417: "#3170F9" },
                      { 307: "#DBEAFE" },
                      { 428: "#EECFF3" },
                      { 318: "#AE57BB" },
                      { 439: "#92400E" },
                      { 208: "#1E3A8A" },
                      { 329: "#059669" },
                      { 219: "#A7F3D0" },
                      { 109: "#CF94D8" },
                      { 60: "#EECFF3" },
                      { 71: "#92400E" },
                      { 82: "#60A5FA" },
                      { 93: "#CF94D8" },
                      { 407: "#92400E" },
                      { 418: "#60A5FA" },
                      { 308: "#FDE68A" },
                      { 429: "#CF94D8" },
                      { 319: "#6E3276" },
                      { 209: "#3170F9" },
                      { 50: "#60A5FA" },
                      { 61: "#CF94D8" },
                      { 72: "#064E3B" },
                      { 83: "#DBEAFE" },
                      { 94: "#AE57BB" },
                      { 408: "#064E3B" },
                      { 419: "#DBEAFE" },
                      { 309: "#F59E0B" },
                      { 40: "#064E3B" },
                      { 51: "#DBEAFE" },
                      { 62: "#AE57BB" },
                      { 73: "#059669" },
                      { 84: "#FDE68A" },
                      { 95: "#6E3276" },
                      { 409: "#059669" },
                      { 30: "#AE57BB" },
                      { 41: "#059669" },
                      { 52: "#FDE68A" },
                      { 63: "#6E3276" },
                      { 74: "#34D399" },
                      { 85: "#F59E0B" },
                      { 96: "#1E3A8A" },
                      { 20: "#FDE68A" },
                      { 31: "#6E3276" },
                      { 42: "#34D399" },
                      { 53: "#F59E0B" },
                      { 64: "#1E3A8A" },
                      { 75: "#A7F3D0" },
                      { 86: "#CD6F00" },
                      { 97: "#3170F9" },
                      { 10: "#34D399" },
                      { 21: "#F59E0B" },
                      { 32: "#1E3A8A" },
                      { 43: "#A7F3D0" },
                      { 54: "#CD6F00" },
                      { 65: "#3170F9" },
                      { 76: "#EECFF3" },
                      { 87: "#92400E" },
                      { 98: "#60A5FA" },
                    ],
                  },
                },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            3: {
              ordered: [
                { label: "shipperid" },
                {
                  datasource:
                    "{{formatDataAsObject(getSalesOrderData.data)['shipperid']}}",
                },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 11: "#A7F3D0" },
                      { 22: "#CD6F00" },
                      { 33: "#3170F9" },
                      { 44: "#EECFF3" },
                      { 55: "#92400E" },
                      { 66: "#60A5FA" },
                      { 77: "#CF94D8" },
                      { 88: "#064E3B" },
                      { 99: "#DBEAFE" },
                      { 12: "#EECFF3" },
                      { 23: "#92400E" },
                      { 34: "#60A5FA" },
                      { 45: "#CF94D8" },
                      { 56: "#064E3B" },
                      { 67: "#DBEAFE" },
                      { 78: "#AE57BB" },
                      { 89: "#059669" },
                      { 13: "#CF94D8" },
                      { 24: "#064E3B" },
                      { 35: "#DBEAFE" },
                      { 46: "#AE57BB" },
                      { 57: "#059669" },
                      { 68: "#FDE68A" },
                      { 79: "#6E3276" },
                      { 14: "#AE57BB" },
                      { 25: "#059669" },
                      { 36: "#FDE68A" },
                      { 47: "#6E3276" },
                      { 58: "#34D399" },
                      { 69: "#F59E0B" },
                      { 15: "#6E3276" },
                      { 26: "#34D399" },
                      { 37: "#F59E0B" },
                      { 48: "#1E3A8A" },
                      { 59: "#A7F3D0" },
                      { 16: "#1E3A8A" },
                      { 27: "#A7F3D0" },
                      { 38: "#CD6F00" },
                      { 49: "#3170F9" },
                      { 17: "#3170F9" },
                      { 28: "#EECFF3" },
                      { 39: "#92400E" },
                      { 18: "#60A5FA" },
                      { 29: "#CF94D8" },
                      { 19: "#DBEAFE" },
                      { 190: "#AE57BB" },
                      { 290: "#60A5FA" },
                      { 180: "#FDE68A" },
                      { 191: "#6E3276" },
                      { 390: "#CD6F00" },
                      { 280: "#064E3B" },
                      { 170: "#34D399" },
                      { 291: "#DBEAFE" },
                      { 181: "#F59E0B" },
                      { 192: "#1E3A8A" },
                      { 380: "#EECFF3" },
                      { 270: "#AE57BB" },
                      { 391: "#92400E" },
                      { 160: "#1E3A8A" },
                      { 281: "#059669" },
                      { 171: "#A7F3D0" },
                      { 292: "#FDE68A" },
                      { 182: "#CD6F00" },
                      { 193: "#3170F9" },
                      { 370: "#60A5FA" },
                      { 260: "#FDE68A" },
                      { 381: "#CF94D8" },
                      { 150: "#CD6F00" },
                      { 271: "#6E3276" },
                      { 392: "#064E3B" },
                      { 161: "#3170F9" },
                      { 282: "#34D399" },
                      { 172: "#EECFF3" },
                      { 293: "#F59E0B" },
                      { 183: "#92400E" },
                      { 194: "#60A5FA" },
                      { 470: "#CD6F00" },
                      { 360: "#064E3B" },
                      { 250: "#34D399" },
                      { 371: "#DBEAFE" },
                      { 140: "#EECFF3" },
                      { 261: "#F59E0B" },
                      { 382: "#AE57BB" },
                      { 151: "#92400E" },
                      { 272: "#1E3A8A" },
                      { 393: "#059669" },
                      { 162: "#60A5FA" },
                      { 283: "#A7F3D0" },
                      { 173: "#CF94D8" },
                      { 294: "#CD6F00" },
                      { 184: "#064E3B" },
                      { 195: "#DBEAFE" },
                      { 460: "#EECFF3" },
                      { 350: "#AE57BB" },
                      { 471: "#92400E" },
                      { 240: "#1E3A8A" },
                      { 361: "#059669" },
                      { 130: "#60A5FA" },
                      { 251: "#A7F3D0" },
                      { 372: "#FDE68A" },
                      { 141: "#CF94D8" },
                      { 262: "#CD6F00" },
                      { 383: "#6E3276" },
                      { 152: "#064E3B" },
                      { 273: "#3170F9" },
                      { 394: "#34D399" },
                      { 163: "#DBEAFE" },
                      { 284: "#EECFF3" },
                      { 174: "#AE57BB" },
                      { 295: "#92400E" },
                      { 185: "#059669" },
                      { 196: "#FDE68A" },
                      { 450: "#60A5FA" },
                      { 340: "#FDE68A" },
                      { 461: "#CF94D8" },
                      { 230: "#CD6F00" },
                      { 351: "#6E3276" },
                      { 472: "#064E3B" },
                      { 120: "#064E3B" },
                      { 241: "#3170F9" },
                      { 362: "#34D399" },
                      { 131: "#DBEAFE" },
                      { 252: "#EECFF3" },
                      { 373: "#F59E0B" },
                      { 142: "#AE57BB" },
                      { 263: "#92400E" },
                      { 384: "#1E3A8A" },
                      { 153: "#059669" },
                      { 274: "#60A5FA" },
                      { 395: "#A7F3D0" },
                      { 164: "#FDE68A" },
                      { 285: "#CF94D8" },
                      { 175: "#6E3276" },
                      { 296: "#064E3B" },
                      { 186: "#34D399" },
                      { 197: "#F59E0B" },
                      { 0: "#1E3A8A" },
                      { 440: "#064E3B" },
                      { 330: "#34D399" },
                      { 451: "#DBEAFE" },
                      { 220: "#EECFF3" },
                      { 341: "#F59E0B" },
                      { 462: "#AE57BB" },
                      { 110: "#AE57BB" },
                      { 231: "#92400E" },
                      { 352: "#1E3A8A" },
                      { 473: "#059669" },
                      { 121: "#059669" },
                      { 242: "#60A5FA" },
                      { 363: "#A7F3D0" },
                      { 132: "#FDE68A" },
                      { 253: "#CF94D8" },
                      { 374: "#CD6F00" },
                      { 143: "#6E3276" },
                      { 264: "#064E3B" },
                      { 385: "#3170F9" },
                      { 154: "#34D399" },
                      { 275: "#DBEAFE" },
                      { 396: "#EECFF3" },
                      { 165: "#F59E0B" },
                      { 286: "#AE57BB" },
                      { 176: "#1E3A8A" },
                      { 297: "#059669" },
                      { 187: "#A7F3D0" },
                      { 198: "#CD6F00" },
                      { 1: "#3170F9" },
                      { 430: "#AE57BB" },
                      { 320: "#1E3A8A" },
                      { 441: "#059669" },
                      { 210: "#60A5FA" },
                      { 331: "#A7F3D0" },
                      { 452: "#FDE68A" },
                      { 100: "#FDE68A" },
                      { 221: "#CF94D8" },
                      { 342: "#CD6F00" },
                      { 463: "#6E3276" },
                      { 111: "#6E3276" },
                      { 232: "#064E3B" },
                      { 353: "#3170F9" },
                      { 474: "#34D399" },
                      { 122: "#34D399" },
                      { 243: "#DBEAFE" },
                      { 364: "#EECFF3" },
                      { 133: "#F59E0B" },
                      { 254: "#AE57BB" },
                      { 375: "#92400E" },
                      { 144: "#1E3A8A" },
                      { 265: "#059669" },
                      { 386: "#60A5FA" },
                      { 155: "#A7F3D0" },
                      { 276: "#FDE68A" },
                      { 397: "#CF94D8" },
                      { 166: "#CD6F00" },
                      { 287: "#6E3276" },
                      { 177: "#3170F9" },
                      { 298: "#34D399" },
                      { 188: "#EECFF3" },
                      { 199: "#92400E" },
                      { 2: "#60A5FA" },
                      { 420: "#FDE68A" },
                      { 310: "#CD6F00" },
                      { 431: "#6E3276" },
                      { 200: "#064E3B" },
                      { 321: "#3170F9" },
                      { 442: "#34D399" },
                      { 211: "#DBEAFE" },
                      { 332: "#EECFF3" },
                      { 453: "#F59E0B" },
                      { 101: "#F59E0B" },
                      { 222: "#AE57BB" },
                      { 343: "#92400E" },
                      { 464: "#1E3A8A" },
                      { 112: "#1E3A8A" },
                      { 233: "#059669" },
                      { 354: "#60A5FA" },
                      { 475: "#A7F3D0" },
                      { 123: "#A7F3D0" },
                      { 244: "#FDE68A" },
                      { 365: "#CF94D8" },
                      { 134: "#CD6F00" },
                      { 255: "#6E3276" },
                      { 376: "#064E3B" },
                      { 145: "#3170F9" },
                      { 266: "#34D399" },
                      { 387: "#DBEAFE" },
                      { 156: "#EECFF3" },
                      { 277: "#F59E0B" },
                      { 398: "#AE57BB" },
                      { 167: "#92400E" },
                      { 288: "#1E3A8A" },
                      { 178: "#60A5FA" },
                      { 299: "#A7F3D0" },
                      { 189: "#CF94D8" },
                      { 3: "#DBEAFE" },
                      { 410: "#34D399" },
                      { 300: "#EECFF3" },
                      { 421: "#F59E0B" },
                      { 311: "#92400E" },
                      { 432: "#1E3A8A" },
                      { 201: "#059669" },
                      { 322: "#60A5FA" },
                      { 443: "#A7F3D0" },
                      { 212: "#FDE68A" },
                      { 333: "#CF94D8" },
                      { 454: "#CD6F00" },
                      { 102: "#CD6F00" },
                      { 223: "#6E3276" },
                      { 344: "#064E3B" },
                      { 465: "#3170F9" },
                      { 113: "#3170F9" },
                      { 234: "#34D399" },
                      { 355: "#DBEAFE" },
                      { 476: "#EECFF3" },
                      { 124: "#EECFF3" },
                      { 245: "#F59E0B" },
                      { 366: "#AE57BB" },
                      { 135: "#92400E" },
                      { 256: "#1E3A8A" },
                      { 377: "#059669" },
                      { 146: "#60A5FA" },
                      { 267: "#A7F3D0" },
                      { 388: "#FDE68A" },
                      { 157: "#CF94D8" },
                      { 278: "#CD6F00" },
                      { 399: "#6E3276" },
                      { 168: "#064E3B" },
                      { 289: "#3170F9" },
                      { 179: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 400: "#1E3A8A" },
                      { 411: "#A7F3D0" },
                      { 301: "#CF94D8" },
                      { 422: "#CD6F00" },
                      { 312: "#064E3B" },
                      { 433: "#3170F9" },
                      { 202: "#34D399" },
                      { 323: "#DBEAFE" },
                      { 444: "#EECFF3" },
                      { 213: "#F59E0B" },
                      { 334: "#AE57BB" },
                      { 455: "#92400E" },
                      { 103: "#92400E" },
                      { 224: "#1E3A8A" },
                      { 345: "#059669" },
                      { 466: "#60A5FA" },
                      { 114: "#60A5FA" },
                      { 235: "#A7F3D0" },
                      { 356: "#FDE68A" },
                      { 477: "#CF94D8" },
                      { 125: "#CF94D8" },
                      { 246: "#CD6F00" },
                      { 367: "#6E3276" },
                      { 136: "#064E3B" },
                      { 257: "#3170F9" },
                      { 378: "#34D399" },
                      { 147: "#DBEAFE" },
                      { 268: "#EECFF3" },
                      { 389: "#F59E0B" },
                      { 158: "#AE57BB" },
                      { 279: "#92400E" },
                      { 169: "#059669" },
                      { 5: "#F59E0B" },
                      { 401: "#3170F9" },
                      { 412: "#EECFF3" },
                      { 302: "#AE57BB" },
                      { 423: "#92400E" },
                      { 313: "#059669" },
                      { 434: "#60A5FA" },
                      { 203: "#A7F3D0" },
                      { 324: "#FDE68A" },
                      { 445: "#CF94D8" },
                      { 214: "#CD6F00" },
                      { 335: "#6E3276" },
                      { 456: "#064E3B" },
                      { 104: "#064E3B" },
                      { 225: "#3170F9" },
                      { 346: "#34D399" },
                      { 467: "#DBEAFE" },
                      { 115: "#DBEAFE" },
                      { 236: "#EECFF3" },
                      { 357: "#F59E0B" },
                      { 126: "#AE57BB" },
                      { 247: "#92400E" },
                      { 368: "#1E3A8A" },
                      { 137: "#059669" },
                      { 258: "#60A5FA" },
                      { 379: "#A7F3D0" },
                      { 148: "#FDE68A" },
                      { 269: "#CF94D8" },
                      { 159: "#6E3276" },
                      { 6: "#CD6F00" },
                      { 402: "#60A5FA" },
                      { 413: "#CF94D8" },
                      { 303: "#6E3276" },
                      { 424: "#064E3B" },
                      { 314: "#34D399" },
                      { 435: "#DBEAFE" },
                      { 204: "#EECFF3" },
                      { 325: "#F59E0B" },
                      { 446: "#AE57BB" },
                      { 215: "#92400E" },
                      { 336: "#1E3A8A" },
                      { 457: "#059669" },
                      { 105: "#059669" },
                      { 226: "#60A5FA" },
                      { 347: "#A7F3D0" },
                      { 468: "#FDE68A" },
                      { 116: "#FDE68A" },
                      { 237: "#CF94D8" },
                      { 358: "#CD6F00" },
                      { 127: "#6E3276" },
                      { 248: "#064E3B" },
                      { 369: "#3170F9" },
                      { 138: "#34D399" },
                      { 259: "#DBEAFE" },
                      { 149: "#F59E0B" },
                      { 7: "#92400E" },
                      { 403: "#DBEAFE" },
                      { 414: "#AE57BB" },
                      { 304: "#1E3A8A" },
                      { 425: "#059669" },
                      { 315: "#A7F3D0" },
                      { 436: "#FDE68A" },
                      { 205: "#CF94D8" },
                      { 326: "#CD6F00" },
                      { 447: "#6E3276" },
                      { 216: "#064E3B" },
                      { 337: "#3170F9" },
                      { 458: "#34D399" },
                      { 106: "#34D399" },
                      { 227: "#DBEAFE" },
                      { 348: "#EECFF3" },
                      { 469: "#F59E0B" },
                      { 117: "#F59E0B" },
                      { 238: "#AE57BB" },
                      { 359: "#92400E" },
                      { 128: "#1E3A8A" },
                      { 249: "#059669" },
                      { 139: "#A7F3D0" },
                      { 90: "#34D399" },
                      { 8: "#064E3B" },
                      { 404: "#FDE68A" },
                      { 415: "#6E3276" },
                      { 305: "#3170F9" },
                      { 426: "#34D399" },
                      { 316: "#EECFF3" },
                      { 437: "#F59E0B" },
                      { 206: "#AE57BB" },
                      { 327: "#92400E" },
                      { 448: "#1E3A8A" },
                      { 217: "#059669" },
                      { 338: "#60A5FA" },
                      { 459: "#A7F3D0" },
                      { 107: "#A7F3D0" },
                      { 228: "#FDE68A" },
                      { 349: "#CF94D8" },
                      { 118: "#CD6F00" },
                      { 239: "#6E3276" },
                      { 129: "#3170F9" },
                      { 80: "#1E3A8A" },
                      { 91: "#A7F3D0" },
                      { 9: "#059669" },
                      { 405: "#F59E0B" },
                      { 416: "#1E3A8A" },
                      { 306: "#60A5FA" },
                      { 427: "#A7F3D0" },
                      { 317: "#CF94D8" },
                      { 438: "#CD6F00" },
                      { 207: "#6E3276" },
                      { 328: "#064E3B" },
                      { 449: "#3170F9" },
                      { 218: "#34D399" },
                      { 339: "#DBEAFE" },
                      { 108: "#EECFF3" },
                      { 229: "#F59E0B" },
                      { 119: "#92400E" },
                      { 70: "#CD6F00" },
                      { 81: "#3170F9" },
                      { 92: "#EECFF3" },
                      { 406: "#CD6F00" },
                      { 417: "#3170F9" },
                      { 307: "#DBEAFE" },
                      { 428: "#EECFF3" },
                      { 318: "#AE57BB" },
                      { 439: "#92400E" },
                      { 208: "#1E3A8A" },
                      { 329: "#059669" },
                      { 219: "#A7F3D0" },
                      { 109: "#CF94D8" },
                      { 60: "#EECFF3" },
                      { 71: "#92400E" },
                      { 82: "#60A5FA" },
                      { 93: "#CF94D8" },
                      { 407: "#92400E" },
                      { 418: "#60A5FA" },
                      { 308: "#FDE68A" },
                      { 429: "#CF94D8" },
                      { 319: "#6E3276" },
                      { 209: "#3170F9" },
                      { 50: "#60A5FA" },
                      { 61: "#CF94D8" },
                      { 72: "#064E3B" },
                      { 83: "#DBEAFE" },
                      { 94: "#AE57BB" },
                      { 408: "#064E3B" },
                      { 419: "#DBEAFE" },
                      { 309: "#F59E0B" },
                      { 40: "#064E3B" },
                      { 51: "#DBEAFE" },
                      { 62: "#AE57BB" },
                      { 73: "#059669" },
                      { 84: "#FDE68A" },
                      { 95: "#6E3276" },
                      { 409: "#059669" },
                      { 30: "#AE57BB" },
                      { 41: "#059669" },
                      { 52: "#FDE68A" },
                      { 63: "#6E3276" },
                      { 74: "#34D399" },
                      { 85: "#F59E0B" },
                      { 96: "#1E3A8A" },
                      { 20: "#FDE68A" },
                      { 31: "#6E3276" },
                      { 42: "#34D399" },
                      { 53: "#F59E0B" },
                      { 64: "#1E3A8A" },
                      { 75: "#A7F3D0" },
                      { 86: "#CD6F00" },
                      { 97: "#3170F9" },
                      { 10: "#34D399" },
                      { 21: "#F59E0B" },
                      { 32: "#1E3A8A" },
                      { 43: "#A7F3D0" },
                      { 54: "#CD6F00" },
                      { 65: "#3170F9" },
                      { 76: "#EECFF3" },
                      { 87: "#92400E" },
                      { 98: "#60A5FA" },
                    ],
                  },
                },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            4: {
              ordered: [
                { label: "freight" },
                {
                  datasource:
                    "{{formatDataAsObject(getSalesOrderData.data)['freight']}}",
                },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 11: "#A7F3D0" },
                      { 22: "#CD6F00" },
                      { 33: "#3170F9" },
                      { 44: "#EECFF3" },
                      { 55: "#92400E" },
                      { 66: "#60A5FA" },
                      { 77: "#CF94D8" },
                      { 88: "#064E3B" },
                      { 99: "#DBEAFE" },
                      { 12: "#EECFF3" },
                      { 23: "#92400E" },
                      { 34: "#60A5FA" },
                      { 45: "#CF94D8" },
                      { 56: "#064E3B" },
                      { 67: "#DBEAFE" },
                      { 78: "#AE57BB" },
                      { 89: "#059669" },
                      { 13: "#CF94D8" },
                      { 24: "#064E3B" },
                      { 35: "#DBEAFE" },
                      { 46: "#AE57BB" },
                      { 57: "#059669" },
                      { 68: "#FDE68A" },
                      { 79: "#6E3276" },
                      { 14: "#AE57BB" },
                      { 25: "#059669" },
                      { 36: "#FDE68A" },
                      { 47: "#6E3276" },
                      { 58: "#34D399" },
                      { 69: "#F59E0B" },
                      { 15: "#6E3276" },
                      { 26: "#34D399" },
                      { 37: "#F59E0B" },
                      { 48: "#1E3A8A" },
                      { 59: "#A7F3D0" },
                      { 16: "#1E3A8A" },
                      { 27: "#A7F3D0" },
                      { 38: "#CD6F00" },
                      { 49: "#3170F9" },
                      { 17: "#3170F9" },
                      { 28: "#EECFF3" },
                      { 39: "#92400E" },
                      { 18: "#60A5FA" },
                      { 29: "#CF94D8" },
                      { 19: "#DBEAFE" },
                      { 190: "#AE57BB" },
                      { 290: "#60A5FA" },
                      { 180: "#FDE68A" },
                      { 191: "#6E3276" },
                      { 390: "#CD6F00" },
                      { 280: "#064E3B" },
                      { 170: "#34D399" },
                      { 291: "#DBEAFE" },
                      { 181: "#F59E0B" },
                      { 192: "#1E3A8A" },
                      { 380: "#EECFF3" },
                      { 270: "#AE57BB" },
                      { 391: "#92400E" },
                      { 160: "#1E3A8A" },
                      { 281: "#059669" },
                      { 171: "#A7F3D0" },
                      { 292: "#FDE68A" },
                      { 182: "#CD6F00" },
                      { 193: "#3170F9" },
                      { 370: "#60A5FA" },
                      { 260: "#FDE68A" },
                      { 381: "#CF94D8" },
                      { 150: "#CD6F00" },
                      { 271: "#6E3276" },
                      { 392: "#064E3B" },
                      { 161: "#3170F9" },
                      { 282: "#34D399" },
                      { 172: "#EECFF3" },
                      { 293: "#F59E0B" },
                      { 183: "#92400E" },
                      { 194: "#60A5FA" },
                      { 470: "#CD6F00" },
                      { 360: "#064E3B" },
                      { 250: "#34D399" },
                      { 371: "#DBEAFE" },
                      { 140: "#EECFF3" },
                      { 261: "#F59E0B" },
                      { 382: "#AE57BB" },
                      { 151: "#92400E" },
                      { 272: "#1E3A8A" },
                      { 393: "#059669" },
                      { 162: "#60A5FA" },
                      { 283: "#A7F3D0" },
                      { 173: "#CF94D8" },
                      { 294: "#CD6F00" },
                      { 184: "#064E3B" },
                      { 195: "#DBEAFE" },
                      { 460: "#EECFF3" },
                      { 350: "#AE57BB" },
                      { 471: "#92400E" },
                      { 240: "#1E3A8A" },
                      { 361: "#059669" },
                      { 130: "#60A5FA" },
                      { 251: "#A7F3D0" },
                      { 372: "#FDE68A" },
                      { 141: "#CF94D8" },
                      { 262: "#CD6F00" },
                      { 383: "#6E3276" },
                      { 152: "#064E3B" },
                      { 273: "#3170F9" },
                      { 394: "#34D399" },
                      { 163: "#DBEAFE" },
                      { 284: "#EECFF3" },
                      { 174: "#AE57BB" },
                      { 295: "#92400E" },
                      { 185: "#059669" },
                      { 196: "#FDE68A" },
                      { 450: "#60A5FA" },
                      { 340: "#FDE68A" },
                      { 461: "#CF94D8" },
                      { 230: "#CD6F00" },
                      { 351: "#6E3276" },
                      { 472: "#064E3B" },
                      { 120: "#064E3B" },
                      { 241: "#3170F9" },
                      { 362: "#34D399" },
                      { 131: "#DBEAFE" },
                      { 252: "#EECFF3" },
                      { 373: "#F59E0B" },
                      { 142: "#AE57BB" },
                      { 263: "#92400E" },
                      { 384: "#1E3A8A" },
                      { 153: "#059669" },
                      { 274: "#60A5FA" },
                      { 395: "#A7F3D0" },
                      { 164: "#FDE68A" },
                      { 285: "#CF94D8" },
                      { 175: "#6E3276" },
                      { 296: "#064E3B" },
                      { 186: "#34D399" },
                      { 197: "#F59E0B" },
                      { 0: "#1E3A8A" },
                      { 440: "#064E3B" },
                      { 330: "#34D399" },
                      { 451: "#DBEAFE" },
                      { 220: "#EECFF3" },
                      { 341: "#F59E0B" },
                      { 462: "#AE57BB" },
                      { 110: "#AE57BB" },
                      { 231: "#92400E" },
                      { 352: "#1E3A8A" },
                      { 473: "#059669" },
                      { 121: "#059669" },
                      { 242: "#60A5FA" },
                      { 363: "#A7F3D0" },
                      { 132: "#FDE68A" },
                      { 253: "#CF94D8" },
                      { 374: "#CD6F00" },
                      { 143: "#6E3276" },
                      { 264: "#064E3B" },
                      { 385: "#3170F9" },
                      { 154: "#34D399" },
                      { 275: "#DBEAFE" },
                      { 396: "#EECFF3" },
                      { 165: "#F59E0B" },
                      { 286: "#AE57BB" },
                      { 176: "#1E3A8A" },
                      { 297: "#059669" },
                      { 187: "#A7F3D0" },
                      { 198: "#CD6F00" },
                      { 1: "#3170F9" },
                      { 430: "#AE57BB" },
                      { 320: "#1E3A8A" },
                      { 441: "#059669" },
                      { 210: "#60A5FA" },
                      { 331: "#A7F3D0" },
                      { 452: "#FDE68A" },
                      { 100: "#FDE68A" },
                      { 221: "#CF94D8" },
                      { 342: "#CD6F00" },
                      { 463: "#6E3276" },
                      { 111: "#6E3276" },
                      { 232: "#064E3B" },
                      { 353: "#3170F9" },
                      { 474: "#34D399" },
                      { 122: "#34D399" },
                      { 243: "#DBEAFE" },
                      { 364: "#EECFF3" },
                      { 133: "#F59E0B" },
                      { 254: "#AE57BB" },
                      { 375: "#92400E" },
                      { 144: "#1E3A8A" },
                      { 265: "#059669" },
                      { 386: "#60A5FA" },
                      { 155: "#A7F3D0" },
                      { 276: "#FDE68A" },
                      { 397: "#CF94D8" },
                      { 166: "#CD6F00" },
                      { 287: "#6E3276" },
                      { 177: "#3170F9" },
                      { 298: "#34D399" },
                      { 188: "#EECFF3" },
                      { 199: "#92400E" },
                      { 2: "#60A5FA" },
                      { 420: "#FDE68A" },
                      { 310: "#CD6F00" },
                      { 431: "#6E3276" },
                      { 200: "#064E3B" },
                      { 321: "#3170F9" },
                      { 442: "#34D399" },
                      { 211: "#DBEAFE" },
                      { 332: "#EECFF3" },
                      { 453: "#F59E0B" },
                      { 101: "#F59E0B" },
                      { 222: "#AE57BB" },
                      { 343: "#92400E" },
                      { 464: "#1E3A8A" },
                      { 112: "#1E3A8A" },
                      { 233: "#059669" },
                      { 354: "#60A5FA" },
                      { 475: "#A7F3D0" },
                      { 123: "#A7F3D0" },
                      { 244: "#FDE68A" },
                      { 365: "#CF94D8" },
                      { 134: "#CD6F00" },
                      { 255: "#6E3276" },
                      { 376: "#064E3B" },
                      { 145: "#3170F9" },
                      { 266: "#34D399" },
                      { 387: "#DBEAFE" },
                      { 156: "#EECFF3" },
                      { 277: "#F59E0B" },
                      { 398: "#AE57BB" },
                      { 167: "#92400E" },
                      { 288: "#1E3A8A" },
                      { 178: "#60A5FA" },
                      { 299: "#A7F3D0" },
                      { 189: "#CF94D8" },
                      { 3: "#DBEAFE" },
                      { 410: "#34D399" },
                      { 300: "#EECFF3" },
                      { 421: "#F59E0B" },
                      { 311: "#92400E" },
                      { 432: "#1E3A8A" },
                      { 201: "#059669" },
                      { 322: "#60A5FA" },
                      { 443: "#A7F3D0" },
                      { 212: "#FDE68A" },
                      { 333: "#CF94D8" },
                      { 454: "#CD6F00" },
                      { 102: "#CD6F00" },
                      { 223: "#6E3276" },
                      { 344: "#064E3B" },
                      { 465: "#3170F9" },
                      { 113: "#3170F9" },
                      { 234: "#34D399" },
                      { 355: "#DBEAFE" },
                      { 476: "#EECFF3" },
                      { 124: "#EECFF3" },
                      { 245: "#F59E0B" },
                      { 366: "#AE57BB" },
                      { 135: "#92400E" },
                      { 256: "#1E3A8A" },
                      { 377: "#059669" },
                      { 146: "#60A5FA" },
                      { 267: "#A7F3D0" },
                      { 388: "#FDE68A" },
                      { 157: "#CF94D8" },
                      { 278: "#CD6F00" },
                      { 399: "#6E3276" },
                      { 168: "#064E3B" },
                      { 289: "#3170F9" },
                      { 179: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 400: "#1E3A8A" },
                      { 411: "#A7F3D0" },
                      { 301: "#CF94D8" },
                      { 422: "#CD6F00" },
                      { 312: "#064E3B" },
                      { 433: "#3170F9" },
                      { 202: "#34D399" },
                      { 323: "#DBEAFE" },
                      { 444: "#EECFF3" },
                      { 213: "#F59E0B" },
                      { 334: "#AE57BB" },
                      { 455: "#92400E" },
                      { 103: "#92400E" },
                      { 224: "#1E3A8A" },
                      { 345: "#059669" },
                      { 466: "#60A5FA" },
                      { 114: "#60A5FA" },
                      { 235: "#A7F3D0" },
                      { 356: "#FDE68A" },
                      { 477: "#CF94D8" },
                      { 125: "#CF94D8" },
                      { 246: "#CD6F00" },
                      { 367: "#6E3276" },
                      { 136: "#064E3B" },
                      { 257: "#3170F9" },
                      { 378: "#34D399" },
                      { 147: "#DBEAFE" },
                      { 268: "#EECFF3" },
                      { 389: "#F59E0B" },
                      { 158: "#AE57BB" },
                      { 279: "#92400E" },
                      { 169: "#059669" },
                      { 5: "#F59E0B" },
                      { 401: "#3170F9" },
                      { 412: "#EECFF3" },
                      { 302: "#AE57BB" },
                      { 423: "#92400E" },
                      { 313: "#059669" },
                      { 434: "#60A5FA" },
                      { 203: "#A7F3D0" },
                      { 324: "#FDE68A" },
                      { 445: "#CF94D8" },
                      { 214: "#CD6F00" },
                      { 335: "#6E3276" },
                      { 456: "#064E3B" },
                      { 104: "#064E3B" },
                      { 225: "#3170F9" },
                      { 346: "#34D399" },
                      { 467: "#DBEAFE" },
                      { 115: "#DBEAFE" },
                      { 236: "#EECFF3" },
                      { 357: "#F59E0B" },
                      { 126: "#AE57BB" },
                      { 247: "#92400E" },
                      { 368: "#1E3A8A" },
                      { 137: "#059669" },
                      { 258: "#60A5FA" },
                      { 379: "#A7F3D0" },
                      { 148: "#FDE68A" },
                      { 269: "#CF94D8" },
                      { 159: "#6E3276" },
                      { 6: "#CD6F00" },
                      { 402: "#60A5FA" },
                      { 413: "#CF94D8" },
                      { 303: "#6E3276" },
                      { 424: "#064E3B" },
                      { 314: "#34D399" },
                      { 435: "#DBEAFE" },
                      { 204: "#EECFF3" },
                      { 325: "#F59E0B" },
                      { 446: "#AE57BB" },
                      { 215: "#92400E" },
                      { 336: "#1E3A8A" },
                      { 457: "#059669" },
                      { 105: "#059669" },
                      { 226: "#60A5FA" },
                      { 347: "#A7F3D0" },
                      { 468: "#FDE68A" },
                      { 116: "#FDE68A" },
                      { 237: "#CF94D8" },
                      { 358: "#CD6F00" },
                      { 127: "#6E3276" },
                      { 248: "#064E3B" },
                      { 369: "#3170F9" },
                      { 138: "#34D399" },
                      { 259: "#DBEAFE" },
                      { 149: "#F59E0B" },
                      { 7: "#92400E" },
                      { 403: "#DBEAFE" },
                      { 414: "#AE57BB" },
                      { 304: "#1E3A8A" },
                      { 425: "#059669" },
                      { 315: "#A7F3D0" },
                      { 436: "#FDE68A" },
                      { 205: "#CF94D8" },
                      { 326: "#CD6F00" },
                      { 447: "#6E3276" },
                      { 216: "#064E3B" },
                      { 337: "#3170F9" },
                      { 458: "#34D399" },
                      { 106: "#34D399" },
                      { 227: "#DBEAFE" },
                      { 348: "#EECFF3" },
                      { 469: "#F59E0B" },
                      { 117: "#F59E0B" },
                      { 238: "#AE57BB" },
                      { 359: "#92400E" },
                      { 128: "#1E3A8A" },
                      { 249: "#059669" },
                      { 139: "#A7F3D0" },
                      { 90: "#34D399" },
                      { 8: "#064E3B" },
                      { 404: "#FDE68A" },
                      { 415: "#6E3276" },
                      { 305: "#3170F9" },
                      { 426: "#34D399" },
                      { 316: "#EECFF3" },
                      { 437: "#F59E0B" },
                      { 206: "#AE57BB" },
                      { 327: "#92400E" },
                      { 448: "#1E3A8A" },
                      { 217: "#059669" },
                      { 338: "#60A5FA" },
                      { 459: "#A7F3D0" },
                      { 107: "#A7F3D0" },
                      { 228: "#FDE68A" },
                      { 349: "#CF94D8" },
                      { 118: "#CD6F00" },
                      { 239: "#6E3276" },
                      { 129: "#3170F9" },
                      { 80: "#1E3A8A" },
                      { 91: "#A7F3D0" },
                      { 9: "#059669" },
                      { 405: "#F59E0B" },
                      { 416: "#1E3A8A" },
                      { 306: "#60A5FA" },
                      { 427: "#A7F3D0" },
                      { 317: "#CF94D8" },
                      { 438: "#CD6F00" },
                      { 207: "#6E3276" },
                      { 328: "#064E3B" },
                      { 449: "#3170F9" },
                      { 218: "#34D399" },
                      { 339: "#DBEAFE" },
                      { 108: "#EECFF3" },
                      { 229: "#F59E0B" },
                      { 119: "#92400E" },
                      { 70: "#CD6F00" },
                      { 81: "#3170F9" },
                      { 92: "#EECFF3" },
                      { 406: "#CD6F00" },
                      { 417: "#3170F9" },
                      { 307: "#DBEAFE" },
                      { 428: "#EECFF3" },
                      { 318: "#AE57BB" },
                      { 439: "#92400E" },
                      { 208: "#1E3A8A" },
                      { 329: "#059669" },
                      { 219: "#A7F3D0" },
                      { 109: "#CF94D8" },
                      { 60: "#EECFF3" },
                      { 71: "#92400E" },
                      { 82: "#60A5FA" },
                      { 93: "#CF94D8" },
                      { 407: "#92400E" },
                      { 418: "#60A5FA" },
                      { 308: "#FDE68A" },
                      { 429: "#CF94D8" },
                      { 319: "#6E3276" },
                      { 209: "#3170F9" },
                      { 50: "#60A5FA" },
                      { 61: "#CF94D8" },
                      { 72: "#064E3B" },
                      { 83: "#DBEAFE" },
                      { 94: "#AE57BB" },
                      { 408: "#064E3B" },
                      { 419: "#DBEAFE" },
                      { 309: "#F59E0B" },
                      { 40: "#064E3B" },
                      { 51: "#DBEAFE" },
                      { 62: "#AE57BB" },
                      { 73: "#059669" },
                      { 84: "#FDE68A" },
                      { 95: "#6E3276" },
                      { 409: "#059669" },
                      { 30: "#AE57BB" },
                      { 41: "#059669" },
                      { 52: "#FDE68A" },
                      { 63: "#6E3276" },
                      { 74: "#34D399" },
                      { 85: "#F59E0B" },
                      { 96: "#1E3A8A" },
                      { 20: "#FDE68A" },
                      { 31: "#6E3276" },
                      { 42: "#34D399" },
                      { 53: "#F59E0B" },
                      { 64: "#1E3A8A" },
                      { 75: "#A7F3D0" },
                      { 86: "#CD6F00" },
                      { 97: "#3170F9" },
                      { 10: "#34D399" },
                      { 21: "#F59E0B" },
                      { 32: "#1E3A8A" },
                      { 43: "#A7F3D0" },
                      { 54: "#CD6F00" },
                      { 65: "#3170F9" },
                      { 76: "#EECFF3" },
                      { 87: "#92400E" },
                      { 98: "#60A5FA" },
                    ],
                  },
                },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            5: {
              ordered: [
                { label: "shippostalcode" },
                {
                  datasource:
                    "{{formatDataAsObject(getSalesOrderData.data)['shippostalcode']}}",
                },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 11: "#A7F3D0" },
                      { 22: "#CD6F00" },
                      { 33: "#3170F9" },
                      { 44: "#EECFF3" },
                      { 55: "#92400E" },
                      { 66: "#60A5FA" },
                      { 77: "#CF94D8" },
                      { 88: "#064E3B" },
                      { 99: "#DBEAFE" },
                      { 12: "#EECFF3" },
                      { 23: "#92400E" },
                      { 34: "#60A5FA" },
                      { 45: "#CF94D8" },
                      { 56: "#064E3B" },
                      { 67: "#DBEAFE" },
                      { 78: "#AE57BB" },
                      { 89: "#059669" },
                      { 13: "#CF94D8" },
                      { 24: "#064E3B" },
                      { 35: "#DBEAFE" },
                      { 46: "#AE57BB" },
                      { 57: "#059669" },
                      { 68: "#FDE68A" },
                      { 79: "#6E3276" },
                      { 14: "#AE57BB" },
                      { 25: "#059669" },
                      { 36: "#FDE68A" },
                      { 47: "#6E3276" },
                      { 58: "#34D399" },
                      { 69: "#F59E0B" },
                      { 15: "#6E3276" },
                      { 26: "#34D399" },
                      { 37: "#F59E0B" },
                      { 48: "#1E3A8A" },
                      { 59: "#A7F3D0" },
                      { 16: "#1E3A8A" },
                      { 27: "#A7F3D0" },
                      { 38: "#CD6F00" },
                      { 49: "#3170F9" },
                      { 17: "#3170F9" },
                      { 28: "#EECFF3" },
                      { 39: "#92400E" },
                      { 18: "#60A5FA" },
                      { 29: "#CF94D8" },
                      { 19: "#DBEAFE" },
                      { 190: "#AE57BB" },
                      { 290: "#60A5FA" },
                      { 180: "#FDE68A" },
                      { 191: "#6E3276" },
                      { 390: "#CD6F00" },
                      { 280: "#064E3B" },
                      { 170: "#34D399" },
                      { 291: "#DBEAFE" },
                      { 181: "#F59E0B" },
                      { 192: "#1E3A8A" },
                      { 380: "#EECFF3" },
                      { 270: "#AE57BB" },
                      { 391: "#92400E" },
                      { 160: "#1E3A8A" },
                      { 281: "#059669" },
                      { 171: "#A7F3D0" },
                      { 292: "#FDE68A" },
                      { 182: "#CD6F00" },
                      { 193: "#3170F9" },
                      { 370: "#60A5FA" },
                      { 260: "#FDE68A" },
                      { 381: "#CF94D8" },
                      { 150: "#CD6F00" },
                      { 271: "#6E3276" },
                      { 392: "#064E3B" },
                      { 161: "#3170F9" },
                      { 282: "#34D399" },
                      { 172: "#EECFF3" },
                      { 293: "#F59E0B" },
                      { 183: "#92400E" },
                      { 194: "#60A5FA" },
                      { 470: "#CD6F00" },
                      { 360: "#064E3B" },
                      { 250: "#34D399" },
                      { 371: "#DBEAFE" },
                      { 140: "#EECFF3" },
                      { 261: "#F59E0B" },
                      { 382: "#AE57BB" },
                      { 151: "#92400E" },
                      { 272: "#1E3A8A" },
                      { 393: "#059669" },
                      { 162: "#60A5FA" },
                      { 283: "#A7F3D0" },
                      { 173: "#CF94D8" },
                      { 294: "#CD6F00" },
                      { 184: "#064E3B" },
                      { 195: "#DBEAFE" },
                      { 460: "#EECFF3" },
                      { 350: "#AE57BB" },
                      { 471: "#92400E" },
                      { 240: "#1E3A8A" },
                      { 361: "#059669" },
                      { 130: "#60A5FA" },
                      { 251: "#A7F3D0" },
                      { 372: "#FDE68A" },
                      { 141: "#CF94D8" },
                      { 262: "#CD6F00" },
                      { 383: "#6E3276" },
                      { 152: "#064E3B" },
                      { 273: "#3170F9" },
                      { 394: "#34D399" },
                      { 163: "#DBEAFE" },
                      { 284: "#EECFF3" },
                      { 174: "#AE57BB" },
                      { 295: "#92400E" },
                      { 185: "#059669" },
                      { 196: "#FDE68A" },
                      { 450: "#60A5FA" },
                      { 340: "#FDE68A" },
                      { 461: "#CF94D8" },
                      { 230: "#CD6F00" },
                      { 351: "#6E3276" },
                      { 472: "#064E3B" },
                      { 120: "#064E3B" },
                      { 241: "#3170F9" },
                      { 362: "#34D399" },
                      { 131: "#DBEAFE" },
                      { 252: "#EECFF3" },
                      { 373: "#F59E0B" },
                      { 142: "#AE57BB" },
                      { 263: "#92400E" },
                      { 384: "#1E3A8A" },
                      { 153: "#059669" },
                      { 274: "#60A5FA" },
                      { 395: "#A7F3D0" },
                      { 164: "#FDE68A" },
                      { 285: "#CF94D8" },
                      { 175: "#6E3276" },
                      { 296: "#064E3B" },
                      { 186: "#34D399" },
                      { 197: "#F59E0B" },
                      { 0: "#1E3A8A" },
                      { 440: "#064E3B" },
                      { 330: "#34D399" },
                      { 451: "#DBEAFE" },
                      { 220: "#EECFF3" },
                      { 341: "#F59E0B" },
                      { 462: "#AE57BB" },
                      { 110: "#AE57BB" },
                      { 231: "#92400E" },
                      { 352: "#1E3A8A" },
                      { 473: "#059669" },
                      { 121: "#059669" },
                      { 242: "#60A5FA" },
                      { 363: "#A7F3D0" },
                      { 132: "#FDE68A" },
                      { 253: "#CF94D8" },
                      { 374: "#CD6F00" },
                      { 143: "#6E3276" },
                      { 264: "#064E3B" },
                      { 385: "#3170F9" },
                      { 154: "#34D399" },
                      { 275: "#DBEAFE" },
                      { 396: "#EECFF3" },
                      { 165: "#F59E0B" },
                      { 286: "#AE57BB" },
                      { 176: "#1E3A8A" },
                      { 297: "#059669" },
                      { 187: "#A7F3D0" },
                      { 198: "#CD6F00" },
                      { 1: "#3170F9" },
                      { 430: "#AE57BB" },
                      { 320: "#1E3A8A" },
                      { 441: "#059669" },
                      { 210: "#60A5FA" },
                      { 331: "#A7F3D0" },
                      { 452: "#FDE68A" },
                      { 100: "#FDE68A" },
                      { 221: "#CF94D8" },
                      { 342: "#CD6F00" },
                      { 463: "#6E3276" },
                      { 111: "#6E3276" },
                      { 232: "#064E3B" },
                      { 353: "#3170F9" },
                      { 474: "#34D399" },
                      { 122: "#34D399" },
                      { 243: "#DBEAFE" },
                      { 364: "#EECFF3" },
                      { 133: "#F59E0B" },
                      { 254: "#AE57BB" },
                      { 375: "#92400E" },
                      { 144: "#1E3A8A" },
                      { 265: "#059669" },
                      { 386: "#60A5FA" },
                      { 155: "#A7F3D0" },
                      { 276: "#FDE68A" },
                      { 397: "#CF94D8" },
                      { 166: "#CD6F00" },
                      { 287: "#6E3276" },
                      { 177: "#3170F9" },
                      { 298: "#34D399" },
                      { 188: "#EECFF3" },
                      { 199: "#92400E" },
                      { 2: "#60A5FA" },
                      { 420: "#FDE68A" },
                      { 310: "#CD6F00" },
                      { 431: "#6E3276" },
                      { 200: "#064E3B" },
                      { 321: "#3170F9" },
                      { 442: "#34D399" },
                      { 211: "#DBEAFE" },
                      { 332: "#EECFF3" },
                      { 453: "#F59E0B" },
                      { 101: "#F59E0B" },
                      { 222: "#AE57BB" },
                      { 343: "#92400E" },
                      { 464: "#1E3A8A" },
                      { 112: "#1E3A8A" },
                      { 233: "#059669" },
                      { 354: "#60A5FA" },
                      { 475: "#A7F3D0" },
                      { 123: "#A7F3D0" },
                      { 244: "#FDE68A" },
                      { 365: "#CF94D8" },
                      { 134: "#CD6F00" },
                      { 255: "#6E3276" },
                      { 376: "#064E3B" },
                      { 145: "#3170F9" },
                      { 266: "#34D399" },
                      { 387: "#DBEAFE" },
                      { 156: "#EECFF3" },
                      { 277: "#F59E0B" },
                      { 398: "#AE57BB" },
                      { 167: "#92400E" },
                      { 288: "#1E3A8A" },
                      { 178: "#60A5FA" },
                      { 299: "#A7F3D0" },
                      { 189: "#CF94D8" },
                      { 3: "#DBEAFE" },
                      { 410: "#34D399" },
                      { 300: "#EECFF3" },
                      { 421: "#F59E0B" },
                      { 311: "#92400E" },
                      { 432: "#1E3A8A" },
                      { 201: "#059669" },
                      { 322: "#60A5FA" },
                      { 443: "#A7F3D0" },
                      { 212: "#FDE68A" },
                      { 333: "#CF94D8" },
                      { 454: "#CD6F00" },
                      { 102: "#CD6F00" },
                      { 223: "#6E3276" },
                      { 344: "#064E3B" },
                      { 465: "#3170F9" },
                      { 113: "#3170F9" },
                      { 234: "#34D399" },
                      { 355: "#DBEAFE" },
                      { 476: "#EECFF3" },
                      { 124: "#EECFF3" },
                      { 245: "#F59E0B" },
                      { 366: "#AE57BB" },
                      { 135: "#92400E" },
                      { 256: "#1E3A8A" },
                      { 377: "#059669" },
                      { 146: "#60A5FA" },
                      { 267: "#A7F3D0" },
                      { 388: "#FDE68A" },
                      { 157: "#CF94D8" },
                      { 278: "#CD6F00" },
                      { 399: "#6E3276" },
                      { 168: "#064E3B" },
                      { 289: "#3170F9" },
                      { 179: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 400: "#1E3A8A" },
                      { 411: "#A7F3D0" },
                      { 301: "#CF94D8" },
                      { 422: "#CD6F00" },
                      { 312: "#064E3B" },
                      { 433: "#3170F9" },
                      { 202: "#34D399" },
                      { 323: "#DBEAFE" },
                      { 444: "#EECFF3" },
                      { 213: "#F59E0B" },
                      { 334: "#AE57BB" },
                      { 455: "#92400E" },
                      { 103: "#92400E" },
                      { 224: "#1E3A8A" },
                      { 345: "#059669" },
                      { 466: "#60A5FA" },
                      { 114: "#60A5FA" },
                      { 235: "#A7F3D0" },
                      { 356: "#FDE68A" },
                      { 477: "#CF94D8" },
                      { 125: "#CF94D8" },
                      { 246: "#CD6F00" },
                      { 367: "#6E3276" },
                      { 136: "#064E3B" },
                      { 257: "#3170F9" },
                      { 378: "#34D399" },
                      { 147: "#DBEAFE" },
                      { 268: "#EECFF3" },
                      { 389: "#F59E0B" },
                      { 158: "#AE57BB" },
                      { 279: "#92400E" },
                      { 169: "#059669" },
                      { 5: "#F59E0B" },
                      { 401: "#3170F9" },
                      { 412: "#EECFF3" },
                      { 302: "#AE57BB" },
                      { 423: "#92400E" },
                      { 313: "#059669" },
                      { 434: "#60A5FA" },
                      { 203: "#A7F3D0" },
                      { 324: "#FDE68A" },
                      { 445: "#CF94D8" },
                      { 214: "#CD6F00" },
                      { 335: "#6E3276" },
                      { 456: "#064E3B" },
                      { 104: "#064E3B" },
                      { 225: "#3170F9" },
                      { 346: "#34D399" },
                      { 467: "#DBEAFE" },
                      { 115: "#DBEAFE" },
                      { 236: "#EECFF3" },
                      { 357: "#F59E0B" },
                      { 126: "#AE57BB" },
                      { 247: "#92400E" },
                      { 368: "#1E3A8A" },
                      { 137: "#059669" },
                      { 258: "#60A5FA" },
                      { 379: "#A7F3D0" },
                      { 148: "#FDE68A" },
                      { 269: "#CF94D8" },
                      { 159: "#6E3276" },
                      { 6: "#CD6F00" },
                      { 402: "#60A5FA" },
                      { 413: "#CF94D8" },
                      { 303: "#6E3276" },
                      { 424: "#064E3B" },
                      { 314: "#34D399" },
                      { 435: "#DBEAFE" },
                      { 204: "#EECFF3" },
                      { 325: "#F59E0B" },
                      { 446: "#AE57BB" },
                      { 215: "#92400E" },
                      { 336: "#1E3A8A" },
                      { 457: "#059669" },
                      { 105: "#059669" },
                      { 226: "#60A5FA" },
                      { 347: "#A7F3D0" },
                      { 468: "#FDE68A" },
                      { 116: "#FDE68A" },
                      { 237: "#CF94D8" },
                      { 358: "#CD6F00" },
                      { 127: "#6E3276" },
                      { 248: "#064E3B" },
                      { 369: "#3170F9" },
                      { 138: "#34D399" },
                      { 259: "#DBEAFE" },
                      { 149: "#F59E0B" },
                      { 7: "#92400E" },
                      { 403: "#DBEAFE" },
                      { 414: "#AE57BB" },
                      { 304: "#1E3A8A" },
                      { 425: "#059669" },
                      { 315: "#A7F3D0" },
                      { 436: "#FDE68A" },
                      { 205: "#CF94D8" },
                      { 326: "#CD6F00" },
                      { 447: "#6E3276" },
                      { 216: "#064E3B" },
                      { 337: "#3170F9" },
                      { 458: "#34D399" },
                      { 106: "#34D399" },
                      { 227: "#DBEAFE" },
                      { 348: "#EECFF3" },
                      { 469: "#F59E0B" },
                      { 117: "#F59E0B" },
                      { 238: "#AE57BB" },
                      { 359: "#92400E" },
                      { 128: "#1E3A8A" },
                      { 249: "#059669" },
                      { 139: "#A7F3D0" },
                      { 90: "#34D399" },
                      { 8: "#064E3B" },
                      { 404: "#FDE68A" },
                      { 415: "#6E3276" },
                      { 305: "#3170F9" },
                      { 426: "#34D399" },
                      { 316: "#EECFF3" },
                      { 437: "#F59E0B" },
                      { 206: "#AE57BB" },
                      { 327: "#92400E" },
                      { 448: "#1E3A8A" },
                      { 217: "#059669" },
                      { 338: "#60A5FA" },
                      { 459: "#A7F3D0" },
                      { 107: "#A7F3D0" },
                      { 228: "#FDE68A" },
                      { 349: "#CF94D8" },
                      { 118: "#CD6F00" },
                      { 239: "#6E3276" },
                      { 129: "#3170F9" },
                      { 80: "#1E3A8A" },
                      { 91: "#A7F3D0" },
                      { 9: "#059669" },
                      { 405: "#F59E0B" },
                      { 416: "#1E3A8A" },
                      { 306: "#60A5FA" },
                      { 427: "#A7F3D0" },
                      { 317: "#CF94D8" },
                      { 438: "#CD6F00" },
                      { 207: "#6E3276" },
                      { 328: "#064E3B" },
                      { 449: "#3170F9" },
                      { 218: "#34D399" },
                      { 339: "#DBEAFE" },
                      { 108: "#EECFF3" },
                      { 229: "#F59E0B" },
                      { 119: "#92400E" },
                      { 70: "#CD6F00" },
                      { 81: "#3170F9" },
                      { 92: "#EECFF3" },
                      { 406: "#CD6F00" },
                      { 417: "#3170F9" },
                      { 307: "#DBEAFE" },
                      { 428: "#EECFF3" },
                      { 318: "#AE57BB" },
                      { 439: "#92400E" },
                      { 208: "#1E3A8A" },
                      { 329: "#059669" },
                      { 219: "#A7F3D0" },
                      { 109: "#CF94D8" },
                      { 60: "#EECFF3" },
                      { 71: "#92400E" },
                      { 82: "#60A5FA" },
                      { 93: "#CF94D8" },
                      { 407: "#92400E" },
                      { 418: "#60A5FA" },
                      { 308: "#FDE68A" },
                      { 429: "#CF94D8" },
                      { 319: "#6E3276" },
                      { 209: "#3170F9" },
                      { 50: "#60A5FA" },
                      { 61: "#CF94D8" },
                      { 72: "#064E3B" },
                      { 83: "#DBEAFE" },
                      { 94: "#AE57BB" },
                      { 408: "#064E3B" },
                      { 419: "#DBEAFE" },
                      { 309: "#F59E0B" },
                      { 40: "#064E3B" },
                      { 51: "#DBEAFE" },
                      { 62: "#AE57BB" },
                      { 73: "#059669" },
                      { 84: "#FDE68A" },
                      { 95: "#6E3276" },
                      { 409: "#059669" },
                      { 30: "#AE57BB" },
                      { 41: "#059669" },
                      { 52: "#FDE68A" },
                      { 63: "#6E3276" },
                      { 74: "#34D399" },
                      { 85: "#F59E0B" },
                      { 96: "#1E3A8A" },
                      { 20: "#FDE68A" },
                      { 31: "#6E3276" },
                      { 42: "#34D399" },
                      { 53: "#F59E0B" },
                      { 64: "#1E3A8A" },
                      { 75: "#A7F3D0" },
                      { 86: "#CD6F00" },
                      { 97: "#3170F9" },
                      { 10: "#34D399" },
                      { 21: "#F59E0B" },
                      { 32: "#1E3A8A" },
                      { 43: "#A7F3D0" },
                      { 54: "#CD6F00" },
                      { 65: "#3170F9" },
                      { 76: "#EECFF3" },
                      { 87: "#92400E" },
                      { 98: "#60A5FA" },
                    ],
                  },
                },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="array"
      datasourceInputMode="javascript"
      datasourceJS="{{getSalesOrderData.data}}"
      isDataTemplateDirty={true}
      skipDatasourceUpdate={true}
      xAxis="{{formatDataAsObject(getSalesOrderData.data)['empid']}}"
      xAxisDropdown="empid"
    />
  </View>
  <View
    id="12f40"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Team"
    viewKey="View 3"
  >
    <Table
      id="table5"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getEmployeeData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="62c9b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="empid"
        label="Empid"
        placeholder="Enter value"
        position="center"
        size={55}
        summaryAggregationMode="none"
      />
      <Column
        id="20ef7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="lastname"
        label="Lastname"
        placeholder="Enter value"
        position="center"
        size={75}
        summaryAggregationMode="none"
      />
      <Column
        id="b2ea9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="firstname"
        label="Firstname"
        placeholder="Enter value"
        position="center"
        size={79}
        summaryAggregationMode="none"
      />
      <Column
        id="d9cbc"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="title"
        label="Title"
        placeholder="Select option"
        position="center"
        size={87}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3458d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="titleofcourtesy"
        label="Titleofcourtesy"
        placeholder="Select option"
        position="center"
        size={63}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f4582"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="birthdate"
        label="Birthdate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b7927"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="hiredate"
        label="Hiredate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2fd3f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="address"
        label="Address"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2e2ff"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="city"
        label="City"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="66f36"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="region"
        label="Region"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="8455f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="postalcode"
        label="Postalcode"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="59321"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="5f9f1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="phone"
        label="Phone"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="36fc0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="extension"
        label="Extension"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8b787"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="photo"
        label="Photo"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="93ba3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="notes"
        label="Notes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b605e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="mgrid"
        label="Mgrid"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e3290"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="photopath"
        label="Photopath"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View
    id="a87f9"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Demographic"
    viewKey="View 4"
  >
    <PlotlyChart
      id="chart2"
      chartType="pie"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "custid" },
                {
                  datasource:
                    "{{formatDataAsObject(getCustomerData.data)['custid']}}",
                },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 11: "#A7F3D0" },
                      { 22: "#CD6F00" },
                      { 33: "#3170F9" },
                      { 44: "#EECFF3" },
                      { 55: "#92400E" },
                      { 66: "#60A5FA" },
                      { 77: "#CF94D8" },
                      { 88: "#064E3B" },
                      { 12: "#EECFF3" },
                      { 23: "#92400E" },
                      { 34: "#60A5FA" },
                      { 45: "#CF94D8" },
                      { 56: "#064E3B" },
                      { 67: "#DBEAFE" },
                      { 78: "#AE57BB" },
                      { 89: "#059669" },
                      { 13: "#CF94D8" },
                      { 24: "#064E3B" },
                      { 35: "#DBEAFE" },
                      { 46: "#AE57BB" },
                      { 57: "#059669" },
                      { 68: "#FDE68A" },
                      { 79: "#6E3276" },
                      { 14: "#AE57BB" },
                      { 25: "#059669" },
                      { 36: "#FDE68A" },
                      { 47: "#6E3276" },
                      { 58: "#34D399" },
                      { 69: "#F59E0B" },
                      { 15: "#6E3276" },
                      { 26: "#34D399" },
                      { 37: "#F59E0B" },
                      { 48: "#1E3A8A" },
                      { 59: "#A7F3D0" },
                      { 16: "#1E3A8A" },
                      { 27: "#A7F3D0" },
                      { 38: "#CD6F00" },
                      { 49: "#3170F9" },
                      { 17: "#3170F9" },
                      { 28: "#EECFF3" },
                      { 39: "#92400E" },
                      { 18: "#60A5FA" },
                      { 29: "#CF94D8" },
                      { 19: "#DBEAFE" },
                      { 0: "#1E3A8A" },
                      { 1: "#3170F9" },
                      { 2: "#60A5FA" },
                      { 3: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 5: "#F59E0B" },
                      { 6: "#CD6F00" },
                      { 7: "#92400E" },
                      { 90: "#34D399" },
                      { 8: "#064E3B" },
                      { 80: "#1E3A8A" },
                      { 91: "#A7F3D0" },
                      { 9: "#059669" },
                      { 70: "#CD6F00" },
                      { 81: "#3170F9" },
                      { 60: "#EECFF3" },
                      { 71: "#92400E" },
                      { 82: "#60A5FA" },
                      { 50: "#60A5FA" },
                      { 61: "#CF94D8" },
                      { 72: "#064E3B" },
                      { 83: "#DBEAFE" },
                      { 40: "#064E3B" },
                      { 51: "#DBEAFE" },
                      { 62: "#AE57BB" },
                      { 73: "#059669" },
                      { 84: "#FDE68A" },
                      { 30: "#AE57BB" },
                      { 41: "#059669" },
                      { 52: "#FDE68A" },
                      { 63: "#6E3276" },
                      { 74: "#34D399" },
                      { 85: "#F59E0B" },
                      { 20: "#FDE68A" },
                      { 31: "#6E3276" },
                      { 42: "#34D399" },
                      { 53: "#F59E0B" },
                      { 64: "#1E3A8A" },
                      { 75: "#A7F3D0" },
                      { 86: "#CD6F00" },
                      { 10: "#34D399" },
                      { 21: "#F59E0B" },
                      { 32: "#1E3A8A" },
                      { 43: "#A7F3D0" },
                      { 54: "#CD6F00" },
                      { 65: "#3170F9" },
                      { 76: "#EECFF3" },
                      { 87: "#92400E" },
                    ],
                  },
                },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="array"
      datasourceInputMode="javascript"
      datasourceJS="{{getCustomerData.data}}"
      isDataTemplateDirty={true}
      legendAlignment="left"
      skipDatasourceUpdate={true}
      xAxis="{{formatDataAsObject(getCustomerData.data)['country']}}"
      xAxisDropdown="country"
    />
  </View>
</Container>
