<%@ Page Language="C#" %>
<%@ Register TagPrefix="mono" TagName="MonoSamplesHeader" src="~/controls/MonoSamplesHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList list = new ArrayList();
        list.Add (new Dada(1));
        list.Add(new Dada(2));
        list.Add(new Dada(3));
        list.Add(new Dada(4));
        list.Add(new Dada(5));
        list.Add(new Dada(6));
        list.Add(new Dada(7));
        list.Add(new Dada(8));
        list.Add(new Dada(9));
        list.Add(new Dada(10));
        list.Add(new Dada(11));

        GridView1.DataSource = list;
        GridView1.DataBind();
    }

    class Dada
    {
        public Dada(int n)
        {
            un = n;
            dos = "[" + n + "]";
            tres = new DateTime(2005, 3, n);
            quatre = (n % 2) == 0;
        }
        
        int un;
        string dos;
        DateTime tres;
        bool quatre;

        public int IntegerColumn
        {
            get { return un; }
            set { un = value; }
        }
        
        public string StringColumn
        {
            get { return dos; }
            set { dos = value; }
        }
        
        public DateTime DateTimeColumn
        {
            get { return tres; }
            set { tres = value; }
        }
        
        public bool BooleanColumn
        {
            get { return quatre; }
            set { quatre = value; }
        }        
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" type="text/css" href="/mono-xsp.css">
</head>
<body>
<mono:MonoSamplesHeader runat="server"/>
	<h1>Object Bound GridView</h1>
	<p>This grid takes data from an ArrayList of objects. Columns are autogenerated from object's properties.</p>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server"
			AllowPaging="True" PageSize="5" AutoGenerateEditButton="true" AutoGenerateColumns="true"
		>
			<PagerSettings Mode="NextPrevious"/>
			<AlternatingRowStyle BackColor="#FFFFc0"/>
			<SelectedRowStyle BackColor="red"/>
        </asp:GridView>
   		<asp:Button runat="server"/>

    </div>
    </form>
</body>
</html>
