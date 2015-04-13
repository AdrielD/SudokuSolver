<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="SudokuSolver_v3._2.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <script language="Javascript">
       <!--
            function isNumberKey(evt)
            {
                var charCode = (evt.which) ? evt.which : event.keyCode
                if (charCode != 46 && charCode > 31
            && (charCode < 48 || charCode > 57))
                    return false;

                return true;
            }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="TextBox11" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox12" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox13" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox14" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox15" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox16" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox17" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox18" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox19" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox21" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox22" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox23" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox24" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox25" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox26" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox27" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox28" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox29" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox31" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox32" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox33" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox34" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox35" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox36" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox37" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox38" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox39" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="TextBox41" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox42" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox43" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox44" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox45" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox46" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox47" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox48" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox49" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox51" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox52" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox53" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox54" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox55" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox56" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox57" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox58" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox59" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox61" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="31px"></asp:TextBox>
    <asp:TextBox ID="TextBox62" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox63" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox64" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox65" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox66" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox67" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox68" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox69" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="TextBox71" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox72" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox73" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox74" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox75" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox76" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox77" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox78" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox79" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox81" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox82" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox83" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox84" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox85" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox86" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox87" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox88" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox89" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox91" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox92" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox93" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox94" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox95" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox96" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox97" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox98" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <asp:TextBox ID="TextBox99" runat="server" Height="30px" MaxLength="1" onkeypress="return isNumberKey(event)" 
        Width="30px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text=". . ."></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnResolve" runat="server" Text="Resolver" 
        onclick="btnResolve_Click" />
    <asp:Button ID="btnLimpa" runat="server" Text="Limpar" 
        onclick="btnLimpa_Click" />
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Easy" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Hard" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Extreme" />
    </p>
    </form>
</body>
</html>
