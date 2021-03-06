﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:Panel ID="Panel1" runat="server" Height="853px">
            <asp:Label ID="Label1" runat="server" Text="Are you comfortable with a cloud-based Platform-as-a-Service solution?"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Yes" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="No" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="What kind of workload you have?" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Azure SQL is not the ideal choice!!!" Visible="False"></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="radiobutton"  Text="OLTP Database" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" Visible="False"/>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="radiobutton" Text="OLAP Database" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" Visible="False" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Where is your data stored today?" Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>SQL Server</asp:ListItem>
                <asp:ListItem>Oracle</asp:ListItem>
                <asp:ListItem>My SQL</asp:ListItem>
                <asp:ListItem>DB2</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="How large is your database? (size in GB's)" Visible="False"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="123px" TextMode="Number" Visible="False" required></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="Submit" Visible="False" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="No of concurrent users?" Visible="False"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Visible="False" TextMode="Number" required></asp:TextBox>
            <asp:Button ID="Button4" runat="server" Text="Submit" Visible="False" OnClick="Button4_Click" />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Do you require azure sql database auditing and threat detection?" Visible="False" ToolTip="Threat detection will enable customers to respond to suspicious events in the database, such as SQL Injections, as they occur. It'll provide alerts and allow the use of Azure SQL Database Auditing to explore the suspicious events. This will make it simple to monitor and respond to potential security threats."></asp:Label>
            <br />
            <asp:Button ID="Button7" runat="server" Text="Yes" Visible="False" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" Text="No" Visible="False" OnClick="Button8_Click" style="height: 26px" />
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="How often database backup required (in day's)?" Visible="False"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Visible="False" TextMode="Number" required></asp:TextBox>
            <asp:Button ID="Button9" runat="server" Text="Submit" Visible="False" OnClick="Button9_Click" />
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="How long you want to keep the database backup?" Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>7 days</asp:ListItem>
                <asp:ListItem>15 days</asp:ListItem>
                <asp:ListItem>35 days</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Do you require database pool to be created?" Visible="False" ToolTip="SQL Database elastic pools are a simple, cost-effective solution for managing and scaling multiple databases that have varying and unpredictable usage demands."></asp:Label>
            <br />
            <asp:Button ID="Button10" runat="server" Text="Yes" Visible="False" OnClick="Button10_Click" />
            <asp:Button ID="Button11" runat="server" Text="No" Visible="False" OnClick="Button11_Click" />
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" Text="Considering above parameters please calculate azure sql edtu &amp; provide the necessary tier information post review analysis?" Visible="False"></asp:Label>
            <asp:Label ID="Label13" runat="server" Text="Considering above parameters please calculate azure sql dtu &amp; provide the necessary tier information post review analysis?" Visible="False"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://dtucalculator.azurewebsites.net/" Visible="False" Target="_blank">Click here for dtu calculator!!!</asp:HyperLink>
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>Basic - 5 eDTU</asp:ListItem>
                <asp:ListItem>Standard S0 - 50 eDTU</asp:ListItem>
                <asp:ListItem>Standard S1 - 100 eDTU</asp:ListItem>
                <asp:ListItem>Standard S2 - 200 eDTU</asp:ListItem>
                <asp:ListItem>Standard S3 - 300 eDTU</asp:ListItem>
                <asp:ListItem>Standard S4 - 400 eDTU</asp:ListItem>
                <asp:ListItem>Standard S6 - 800 eDTU</asp:ListItem>
                <asp:ListItem>Standard S7 - 1200 eDTU</asp:ListItem>
                <asp:ListItem>Standard S9 - 1600 eDTU</asp:ListItem>
                <asp:ListItem>Premium P1 - 125 eDTU</asp:ListItem>
                <asp:ListItem>Premium P2 - 250 eDTU</asp:ListItem>
                <asp:ListItem>Premium P4 - 500 eDTU</asp:ListItem>
                <asp:ListItem>Premium P6 - 1000 eDTU</asp:ListItem>
                <asp:ListItem>Premium P11 - 1500 eDTU</asp:ListItem>
                <asp:ListItem>Premium P15 - 2000 eDTU</asp:ListItem>
                <asp:ListItem>Premium PRS1 - 125 eDTU</asp:ListItem>
                <asp:ListItem>Premium PRS2 - 250 eDTU</asp:ListItem>
                <asp:ListItem>Premium PRS4 - 500 eDTU</asp:ListItem>
                <asp:ListItem>Premium PRS6 - 1000 eDTU</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList5" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>Basic - 5 DTU</asp:ListItem>
                <asp:ListItem>Standard S0 - 10 DTU</asp:ListItem>
                <asp:ListItem>Standard S1 - 20 DTU</asp:ListItem>
                <asp:ListItem>Standard S2 - 50 DTU</asp:ListItem>
                <asp:ListItem>Standard S3 - 100 DTU</asp:ListItem>
                <asp:ListItem>Standard S4 - 200 DTU</asp:ListItem>
                <asp:ListItem>Standard S6 - 400 DTU</asp:ListItem>
                <asp:ListItem>Standard S7 - 800 DTU</asp:ListItem>
                <asp:ListItem>Standard S9 - 1600 DTU</asp:ListItem>
                <asp:ListItem>Standard S12 - 3000 DTU</asp:ListItem>
                <asp:ListItem>Premium P1 - 125 DTU</asp:ListItem>
                <asp:ListItem>Premium P2 - 250 DTU</asp:ListItem>
                <asp:ListItem>Premium P4 - 500 DTU</asp:ListItem>
                <asp:ListItem>Premium P6 - 1000 DTU</asp:ListItem>
                <asp:ListItem>Premium P11 - 1750 DTU</asp:ListItem>
                <asp:ListItem>Premium P15 - 4000 DTU</asp:ListItem>
                <asp:ListItem>Premium PRS1 - 125 DTU</asp:ListItem>
                <asp:ListItem>Premium PRS2 - 250 DTU</asp:ListItem>
                <asp:ListItem>Premium PRS4 - 500 DTU</asp:ListItem>
                <asp:ListItem>Premium PRS6 - 1000 DTU</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label15" runat="server" Text="Where do you want to host your azure sql database?" Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                 <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>EAST US</asp:ListItem>
                <asp:ListItem>EAST US 2</asp:ListItem>
                <asp:ListItem>CENTRAL US</asp:ListItem>
                <asp:ListItem>NORTH CENTRAL US</asp:ListItem>
                <asp:ListItem>SOUTH CENTRAL US</asp:ListItem>
                <asp:ListItem>WEST CENTRAL US</asp:ListItem>
                <asp:ListItem>WEST US</asp:ListItem>
                <asp:ListItem>WEST US 2</asp:ListItem>
                <asp:ListItem>CANADA EAST</asp:ListItem>
                <asp:ListItem>CANADA CENTRAL</asp:ListItem>
                <asp:ListItem>BRAZIL SOUTH</asp:ListItem>
                <asp:ListItem>NORTH EUROPE</asp:ListItem>
                <asp:ListItem>WEST EUROPE</asp:ListItem>
                <asp:ListItem>GERMANY CENTRAL</asp:ListItem>
                <asp:ListItem>GERMANY NORTHEAST</asp:ListItem>
                <asp:ListItem>UK WEST</asp:ListItem>
                <asp:ListItem>UK SOUTH</asp:ListItem>
                <asp:ListItem>SOUTHEAST ASIA</asp:ListItem>
                <asp:ListItem>EAST ASIA</asp:ListItem>
                <asp:ListItem>AUSTRALIA EAST</asp:ListItem>
                <asp:ListItem>AUSTRALIA SOUTHEAST</asp:ListItem>
                <asp:ListItem>CENTRAL INDIA</asp:ListItem>
                <asp:ListItem>WEST INDIA</asp:ListItem>
                <asp:ListItem>SOUTH INDIA</asp:ListItem>
                <asp:ListItem>JAPAN EAST</asp:ListItem>
                <asp:ListItem>JAPAN WEST</asp:ListItem>
                <asp:ListItem>KOREA CENTRAL</asp:ListItem>
                <asp:ListItem>KOREA SOUTH</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label16" runat="server" Text="Do you require geo-redudancy?" Visible="False" ToolTip="Businesses invest in geographically redundant systems, also known as “georedundancy,” to enable business continuity following a force majeure or major disaster event, whether natural or man-made."></asp:Label>
            <br />
            <asp:Button ID="Button16" runat="server" Text="Yes" Visible="False" OnClick="Button16_Click" />
            <asp:Button ID="Button17" runat="server" Text="No" Visible="False" OnClick="Button17_Click" />
            <br />
            <br />
            <asp:Label ID="Label17" runat="server" Text="Do you require in-memory database technology?" Visible="False" ToolTip="An in-memory database (IMDB, also main memory database system or MMDB or memory resident database) is a database management system that primarily relies on main memory for computer data storage. It is contrasted with database management systems that employ a disk storage mechanism."></asp:Label>
            <br />
            <asp:Button ID="Button18" runat="server" Text="Yes" Visible="False" Height="26px" OnClick="Button18_Click" />
            <asp:Button ID="Button19" runat="server" Text="No" Visible="False" OnClick="Button19_Click" />
            <br />
            <br />
            <asp:Button ID="Button20" runat="server" OnClick="Button20_Click" Text="Reset" />
            <asp:Button ID="Button21" runat="server" Enabled="False" Text="Submit" OnClick="Button21_Click" />
            <asp:TextBox ID="TextBox4" runat="server" Height="16px" TextMode="MultiLine" Width="1000px" Visible="False">helllo</asp:TextBox>                      
            </asp:Panel>    
    </div>
    </form>
</body>
</html>
