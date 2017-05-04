<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="dist_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<article class="content dashboard-page">
   <form runat="server">    
    <asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>   
     <asp:UpdatePanel id="UpdatePanel1" UpdateMode="Conditional" runat="server">
     <ContentTemplate>       
    <section class="section">
        <div class="col-md-6">
            <fieldset>
            <legend>Nombre</legend>
                <asp:Panel ID="Panel1" runat="server" DefaultButton="BtnBEmpleado">
                    <asp:TextBox ID="nombre" runat="server" class="form-control underlined"></asp:TextBox>
                    <asp:ImageButton 
                        ID="BtnBEmpleado" 
                        runat="server" 
                        CommandName="Select" 
                        ToolTip="Seleccionar" 
                        style="display:none;">
                    </asp:ImageButton>                     
                </asp:Panel>
            </fieldset>
        </div>
        <div class="col-md-6">
            <fieldset>
            <legend>Departamento</legend>
                <asp:DropDownList ID="Departamento" runat="server" CssClass="form-control" AutoPostBack="true" CausesValidation="false" ></asp:DropDownList>
            </fieldset>
        </div>
    </section>
    <section class="section">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-block">
                            <div class="card-title-block">
                                <h3 class="title"> Empleados </h3>
                            </div>
                            <section class="example">
                                <div class="table-flip-scroll">                                    
                                    <asp:GridView id="GvEmpleados" runat="server" GridLines="None" CssClass="table table-striped table-bordered table-hover flip-content" 
                                                    ShowHeaderWhenEmpty="true" AutoGenerateColumns="False" AutoPostBack="true" CausesValidation="false">
                                        <Columns>
                                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Departamento" DataField="Departamento" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Puesto" DataField="Puesto" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Turno" DataField="Turno" ItemStyle-CssClass="active"/>
                                            <asp:HyperLinkField HeaderText="Detalles" 
                                                            DataNavigateUrlFields="codigoempleado" 
                                                            DataNavigateUrlFormatString="../../dist/InfoEmpleados.aspx?codigoempleado={0}" 
                                                            Text="<i class='fa fa-eye fa-2x'></i>" />
                                        </Columns>
                                    </asp:GridView>                                       
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
    </section> 
    </ContentTemplate>
    </asp:UpdatePanel>  
   </form>                    
</article>
</asp:Content>

