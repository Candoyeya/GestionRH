<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="incidencias.aspx.vb" Inherits="dist_incidencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<article class="content dashboard-page">
                   
        <section class="section">
                         
            <div class="col-md-6">
                <fieldset>
                <legend>Nombre</legend>
                    <input name='nombre' type='text' tabindex='1' placeholder="Nombre" class="form-control underlined">
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
                                            <th>Tardeada</th>
                                            <th>Prestamo</th>
                                            <th>Bono</th>
                                            <th>Descuento</th>
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
                                            <td></td>
                                            <td class="detalle"><a href=""><i class="fa fa-eye "></i></a></td>
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

