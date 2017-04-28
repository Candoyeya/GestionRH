<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="InfoEmpleados.aspx.vb" Inherits="dist_InfoEmpleados" %>

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
                                          <h3><span id="SpEmpleado" runat="server"></span></h3>
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
                                                        <input id="IDomicilio" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">CP:</label>
                                                         <input id="ICP" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">Ciudad:</label>
                                                        <input id="Iciudad" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">Telefono:</label>
                                                        <input id="ITelefono" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical margen">Curp:</label>
                                                        <input id="ICurp" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="row">
                                                        <label class="alinear-vertical">Estado Civil:</label>
                                                        <input id="IEstadoCivil" runat="server" type="text" readonly="readonly" class="form-control boxed" />
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
                                                         <input id="IPuesto" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Departamento:</label>
                                                         <input id="IDepartamento" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Area:</label>
                                                         <input id="IArea" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Turno:</label>
                                                         <input id="ITurno" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">NSS:</label>
                                                         <input id="INSS" runat="server" type="text" readonly="readonly" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical">Infonavit:</label>
                                                         <input id="IInfonavit" runat="server" type ="text" readonly="readonly" class="form-control boxed" />
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