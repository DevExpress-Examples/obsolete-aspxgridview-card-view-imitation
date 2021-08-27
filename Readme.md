<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/134059790/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1278)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebApplication164/Default.aspx) (VB: [Default.aspx](./VB/WebApplication164/Default.aspx))
<!-- default file list end -->
# OBSOLETE - How to create a Card View with editing capabilities using ASPxGridView
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1278)**
<!-- run online end -->


<p><strong>Starting with v15.2</strong>, we provide the <a href="https://www.devexpress.com/Subscriptions/New-2015-2.xml#aspnet"><strong>ASPxCardView</strong></a> control, which supports CRUD operations out of the box:<br><a href="https://demos.devexpress.com/ASPxCardViewDemos/Editing/EditModes.aspx">ASPxCardView - Edit Modes</a></p>
<p><a href="https://www.devexpress.com/Support/Center/p/T496745">ASPxCardView - How to implement the CRUD (create, read, update, delete) functionality similarly to FormView and DetailsView</a><br><br><strong>For previous versions:</strong><br>To provide editing capabilities, you can add the ASPxButton into the DataRow template. Set its AutoPostBack property to False, and attach a script to the client-side Click event. In the script, call the client-side ASPxClientGridView.StartEditRow method and pass the current row visible index as an argument. Use the Container.VisibleIndex property from inline code to get the index.<br>To add new rows, add a similar button to the StatusBar template and call the ASPxClientGridView.AddNewRow method in its Click event.</p>

<br/>


