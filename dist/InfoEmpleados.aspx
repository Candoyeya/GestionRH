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
                                       
                                        <div class="col-md-6">
                                            <fieldset>
                                             <legend>Datos Personal</legend>

                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">Domicilio:</label>
                                                        <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">CP:</label>
                                                         <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">Ciudad:</label>
                                                        <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">Telefono:</label>
                                                        <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">Curp:</label>
                                                        <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical">Estado Civil:</label>
                                                        <input type="text" readonly="readonly" class="form-control boxed" />
                                                    </div>
                                                   
                                                </div>
                                              
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                             <fieldset>
                                               <legend>Datos Generales</legend>

                                                 <div class="col-md-12">
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Puesto:</label>
                                                         <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Departamento:</label>
                                                         <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Area:</label>
                                                         <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Turno:</label>
                                                         <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">NSS:</label>
                                                         <input type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical">Infonavit:</label>
                                                         <input type="text" readonly="readonly" class="form-control boxed" />
                                                     </div>
                                                 </div>

                                    
                                             </fieldset>
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
                                             <legend>Informacion Laboral</legend>
                                              <div class="card-title-block">
                                                <h3 class="title"> Prestamos </h3>
                                              </div>
                                                <section class="example">
                                                    <div class="table-flip-scroll">
                                                        <table class="table table-striped table-bordered table-hover flip-content">
                                                            <thead class="flip-header">
                                                             <tr>
                                                                <th>Fecha</th>
                                                                <th>Cantidad</th>
                                                             </tr>
                                                            </thead>
                                                            <tbody>
                                                             <tr class="gradeA">
                                                                <td></td>
                                                                <td></td>
                                                              </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </section>
                                                <div class="card-title-block">
                                                     <h3 class="title"> Permisos </h3>
                                                </div>
                                                <section class="example">
                                                    <div class="table-flip-scroll">
                                                        <table class="table table-striped table-bordered table-hover flip-content">
                                                            <thead class="flip-header">
                                                             <tr>
                                                                <th>Fecha</th>
                                                                <th>Motivo</th>
                                                             </tr>
                                                            </thead>
                                                            <tbody>
                                                             <tr class="gradeA">
                                                                <td></td>
                                                                <td></td>
                                                              </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </section>
                                                <div class="card-title-block">
                                                    <h3 class="title"> Vacaciones </h3>
                                                </div>
                                                <section class="example">
                                                    <div class="table-flip-scroll">
                                                        <table class="table table-striped table-bordered table-hover flip-content">
                                                            <thead class="flip-header">
                                                             <tr>
                                                                <th>Fecha Inicio</th>
                                                                <th>Fecha Final</th>
                                                                <th>Dias</th>
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
                                            </fieldset>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    
                </article>
</asp:Content>