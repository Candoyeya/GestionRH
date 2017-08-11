<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="InfoPros.aspx.vb" Inherits="dist_InfoPros" %>

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
                                            <fieldset>
                                            <legend>Datos Personales</legend>
                                                <div class="col-md-5 "> 
                                                    <div class="row">
                                                         <label class="alinear-vertical margen">Nombre:</label>
                                                         <input type="text" class="form-control boxed margen" id="INombre" runat="server"/>
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Domicilio:</label>
                                                         <input type="text" class="form-control boxed margen" id="IDomicilio" runat="server"/>
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Ciudad:</label>
                                                         <input type="text" class="form-control boxed margen" Id="ICiudad" runat="server"/>
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Curp:</label>
                                                         <input type="text" class="form-control boxed margen" Id="ICurp" runat="server"/>
                                                     </div>
                                                </div> 
                                                <div class="col-md-2 ">
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="row">
                                                         <label class="alinear-vertical margen">CP:</label>
                                                         <input type="text" class="form-control boxed margen" Id="ICp" runat="server"/>
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Telefono:</label>
                                                         <input type="text" class="form-control boxed margen" Id="ITelefono" runat="server"/>
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">NSS:</label>
                                                         <input type="text" class="form-control boxed margen" Id="INSS" runat="server"/>
                                                     </div>
                                                </div> 
                                            </fieldset>
                                            <fieldset>
                                            <legend>Antecedentes</legend>
                                                <div class="col-md-12 ">
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                    <tr>
                                                                        <th>Nombre de la Empresa</th>
                                                                        <th>Puesto</th>
                                                                        <th>Años</th>
                                                                        <th>Referencia</th>
                                                                        <th>Telefono</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="gradeA">
                                                                        <td></td>
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
                                            </fieldset>
                                             <fieldset>
                                            <legend>Evaluacion</legend>
                                                <div class="col-md-12 ">
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                    <tr>
                                                                        <th>Nombre de la Evaluacion</th>
                                                                        <th>Calificacion</th>
                                                                        <th>Apto</th>
                                                                        <th>Comentarios</th>
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
                                            </fieldset>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </article>
</asp:Content>