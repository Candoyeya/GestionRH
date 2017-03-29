<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="asistencia.aspx.vb" Inherits="dist_asistencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<article class="content dashboard-page">

                    <section class="section">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-block">
                                       <div class="col-md-1">
                                          <img src="#">
                                       </div>
                                       <div class="col-md-6">
                                          <h3>Oscar Valladares</h3>
                                       </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-block">
                                         <div class="col-md-12">
                                                <div class="col-md-12"> 
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Incidencia:</label>
                                                         <select class="form-control">
                                                            <option>Gratificaciones</option>
                                                            <option>Deduciones</option>
                                                            <option>Tardeada</option>
                                                            <option>Inacistencias</option>
                                                         </select>
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Monto:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-5">
                                                         <label class="alinear-vertical margen">Motivo:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-1">
                                                         <a href="#"><i class="fa fa-plus-square fa-3x"></i></a>
                                                    </div>
                                                </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-block">
                                         <div class="col-md-12 ">
                                                     <h3>Gratificaciones</h3>
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                    <tr>
                                                                        <th>Motivo</th>
                                                                        <th>Fecha</th>
                                                                        <th>Monto</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="gradeA">
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                     <h3>Deduciones</h3>
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                    <tr>
                                                                        <th>Motivo</th>
                                                                        <th>Fecha</th>
                                                                        <th>Monto</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="gradeA">
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                    <h3>Tardeadas</h3>
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                    <tr>
                                                                        <th>Motivo</th>
                                                                        <th>Fecha</th>
                                                                        <th>Monto</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="gradeA">
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                    <h3>Inacistencias</h3>
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                      <tr>
                                                                        <th>Motivo</th>
                                                                        <th>Fecha</th>
                                                                        <th>Monto</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="gradeA">
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-block">
                                         <div class="col-md-12">
                                                <div class="col-md-12"> 
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Monto:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-5">
                                                         <label class="alinear-vertical margen">Plazo en Semanas:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-1">
                                                         <a href="#"><i class="fa fa-plus-square fa-3x"></i></a>
                                                    </div>
                                                </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-block">
                                         <div class="col-md-12 ">
                                                     <h3>Prestamos</h3>
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                    <tr>
                                                                        <th>Fecha</th>
                                                                        <th>Monto</th>
                                                                        <th>Plazo (SEMANAS)</th>
                                                                        <th>Cantidad de descuento</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="gradeA">
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                     <h3>Facturas</h3>
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                    <tr>
                                                                         <th>Fecha</th>
                                                                        <th>Monto</th>
                                                                        <th>Plazo (SEMANAS)</th>
                                                                        <th>Cantidad de descuento</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="gradeA">
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                </div>
                                             <button type="button" class="btn btn-primary-outline">Cancelar</button>
                                             <button type="button" class="btn btn-success-outline">Guardar</button>
                                    </div>
                                </div>
                            </div>
                        </div>









                    </section>
                </article>
</asp:Content>