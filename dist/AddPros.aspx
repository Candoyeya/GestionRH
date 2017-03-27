﻿<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="asistencia.aspx.vb" Inherits="dist_asistencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<article class="content dashboard-page">

                    <section class="section">
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
                                                         <input type="text" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Domicilio:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Ciudad:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Curp:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                     </div>
                                                </div> 
                                                <div class="col-md-2 ">
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="row">
                                                         <label class="alinear-vertical margen">CP:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">Telefono:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                     </div>
                                                     <div class="row">
                                                         <label class="alinear-vertical margen">NNS:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                     </div>
                                                </div> 
                                            </fieldset>
                                            <fieldset>
                                            <legend>Antecedentes</legend>
                                                <div class="col-md-12"> 
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Nombre:</label>
                                                         <input type="text"  class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Puesto:</label>
                                                         <select class="form-control">
                                                            <option>Selecione</option>
                                                            <option>Sistemas</option>
                                                         </select>
                                                    </div>
                                                    <div class="col-md-1">
                                                         <label class="alinear-vertical margen">Año:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Referencia:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Telefono:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-1">
                                                         <a href="#"><i class="fa fa-plus-square fa-3x"></i></a>
                                                    </div>
                                                </div> 
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
                                                <div class="col-md-12"> 
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Nombre:</label>
                                                         <input type="text"  class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Calificacion:</label>
                                                          <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Apto:</label>
                                                         <select class="form-control">
                                                             <option>Si</option>
                                                             <option>No</option>
                                                          </select>
                                                        
                                                    </div>
                                                    <div class="col-md-4">
                                                         <label class="alinear-vertical margen">Comentarios:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-1">
                                                         <a href="#"><i class="fa fa-plus-square fa-3x"></i></a>
                                                    </div>

                                                </div> 
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
                                             <button type="button" class="btn btn-primary-outline">Cancelar</button>
                                             <button type="button" class="btn btn-success-outline">Guardar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </article>
</asp:Content>
