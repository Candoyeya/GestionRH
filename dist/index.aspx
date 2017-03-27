<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="dist_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<article class="content dashboard-page">
                   
    <section class="section">
        <form>
        <div class="col-md-6">
            <fieldset>
            <legend>Nombre</legend>
                <input id="nombre" type='text' tabindex='1' placeholder="Nombre" class="form-control underlined" runat="server">
            </fieldset>
        </div>
        <div class="col-md-6">
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
    </form>
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
                                <table class="table table-striped table-bordered table-hover flip-content">
                                    <thead class="flip-header">
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Departamento</th>
                                            <th>Puesto</th>
                                            <th>Turno</th>
                                            <th>Jefe Directo</th>
                                            <th>Detalle</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="gradeA">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td class="detalle"><a href="InfoEmpleados.aspx"><i class="fa fa-eye"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section> 
                       
</article>
</asp:Content>

