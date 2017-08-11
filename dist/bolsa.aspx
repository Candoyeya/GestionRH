<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="bolsa.aspx.vb" Inherits="dist_bolsa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<article class="content dashboard-page">
 <form runat="server">    
    <asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>   
    <asp:UpdatePanel id="UpdatePanel1" UpdateMode="Conditional" runat="server">         
    <ContentTemplate>         
        <section class="section">
                         
            <div class="col-md-4">
                <fieldset>
                <legend>Nombre</legend>
                    <input name='nombre' type='text' tabindex='1' placeholder="Nombre" class="form-control underlined">
                </fieldset>
            </div>
            <div class="col-md-4">
                <fieldset>
                <legend>Departamento</legend>
                    <select class="form-control">
                            <option>--Selecciona un Departamento--</option>
                            <option>Almace1</option>
                            <option>Almacen2</option>
                            <option>Embarques</option>
                            <option>Compras</option>
                            <option>Sistemas</option>
                    </select>
                </fieldset>
            </div>
            <div class="col-md-4">
                <a href="AddPros.aspx" class="btn btn-primary-outline center addpro"> <i class="fa fa-plus-square"></i> Añadir Prospecto  </a>
                                
            </div>
                        
        </section>

    <section class="section">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-block">
                        <div class="card-title-block">
                            <h3 class="title"> Prospectos </h3>
                        </div>
                        <section class="example">
                            <div class="table-flip-scroll">
                                <asp:GridView id="GvProspectos" runat="server" GridLines="None" CssClass="table table-striped table-bordered table-hover flip-content" 
                                                    ShowHeaderWhenEmpty="true" AutoGenerateColumns="False" AutoPostBack="true" CausesValidation="false">
                                        <Columns>
                                            <asp:BoundField HeaderText="Id" DataField="IdPros" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Domicilio" DataField="Domicilio" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Ciudad" DataField="Ciudad" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Edad" DataField="Edad" ItemStyle-CssClass="active"/>
                                            <asp:HyperLinkField HeaderText="Detalles" 
                                                            DataNavigateUrlFields="IdPros" 
                                                            DataNavigateUrlFormatString="../../dist/InfoPros.aspx?IdPros={0}" 
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

