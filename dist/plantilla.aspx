<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="plantilla.aspx.vb" Inherits="dist_plantilla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid">
<article class="content dashboard-page">
                   
        <section class="section">
                         
            <div class="col-md-7">
                <fieldset>
                <legend>Departamento</legend>
                    <div class="col-md-9">
                                        
                            <select class="form-control">
                                    <option>--Selecciona un Departamento--</option>
                                    <option>Almace1</option>
                                    <option>Almacen2</option>
                                    <option>Embarques</option>
                                    <option>Compras</option>
                                    <option>Sistemas</option>
                            </select>
                    </div>
                    <div class="col-md-2">
                        <a href="#" class="btn btn-primary-outline center"> <i class="fa fa-search"></i> Buscar  </a>
                    </div>
                </fieldset>
            </div>
                           
                        
        </section>

    <section class="section">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-block">
<!----------------------------------------------------Alamcen1-------------------------------------------------------------------->
                        <asp:fieldset>
                            <asp:legend>Almacen1</asp:legend>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th>Area</th>
                                                <th>Puestos</th>
                                                <th>Puesto Disponibles</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeA">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="detalle"><a href="Des_puesto.aspx"><i class="fa fa-eye"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            </asp:fieldset>
<!----------------------------------------------------Alamcen2-------------------------------------------------------------------->
                            <fieldset>
                            <legend>Almacen2</legend>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th>Area</th>
                                                <th>Puestos</th>
                                                <th>Puesto Disponibles</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeA">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="detalle"><a href=""><i class="fa fa-eye"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            </fieldset>
<!----------------------------------------------------Embarques-------------------------------------------------------------------->
                            <fieldset>
                            <legend>Embarques</legend>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th>Area</th>
                                                <th>Puestos</th>
                                                <th>Puesto Disponibles</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeA">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="detalle"><a href=""><i class="fa fa-eye"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            </fieldset>
<!----------------------------------------------------Contabilidad---------------------------------------------------------------->
                            <fieldset>
                            <legend>Contabilidad</legend>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th>Area</th>
                                                <th>Puestos</th>
                                                <th>Puesto Disponibles</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeA">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="detalle"><a href=""><i class="fa fa-eye"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            </fieldset>
<!----------------------------------------------------Compras---------------------------------------------------------------->
                            <fieldset>
                            <legend>Compras</legend>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th>Area</th>
                                                <th>Puestos</th>
                                                <th>Puesto Disponibles</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeA">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="detalle"><a href=""><i class="fa fa-eye"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            </fieldset>
<!----------------------------------------------------CXC---------------------------------------------------------------->
                            <fieldset>
                            <legend>Credito y Cobranza</legend>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th>Area</th>
                                                <th>Puestos</th>
                                                <th>Puesto Disponibles</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeA">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="detalle"><a href=""><i class="fa fa-eye"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            </fieldset>
<!----------------------------------------------------Sistemas---------------------------------------------------------------->
                            <fieldset>
                            <legend>Sistemas</legend>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th>Area</th>
                                                <th>Puestos</th>
                                                <th>Puesto Disponibles</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeA">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="detalle"><a href=""><i class="fa fa-eye"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            </fieldset>
<!----------------------------------------------------Ventas---------------------------------------------------------------->
                            <fieldset>
                            <legend>Ventas</legend>
                            <section class="example">
                                <div class="table-flip-scroll">
                                    <table class="table table-striped table-bordered table-hover flip-content">
                                        <thead class="flip-header">
                                            <tr>
                                                <th>Area</th>
                                                <th>Puestos</th>
                                                <th>Puesto Disponibles</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeA">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td class="detalle"><a href=""><i class="fa fa-eye"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                            </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </section>
                    
</article>
</div>
</asp:Content>

