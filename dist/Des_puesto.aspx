﻿<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="asistencia.aspx.vb" Inherits="dist_asistencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<article class="content dashboard-page">

                    <section class="section">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-block">
                               <fieldset>
                                <legend>Descripcion del Puesto</legend>
                                 <asp:label runat="server"></asp:label>
                             </fieldset>
                            </div>
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-block">

                                            <fieldset>
                                             <legend>Posibles Candidatos</legend>
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
                                            </fieldset>
                                        </div>

                                    
                                </div>
                            </div>
                        </div>
                    </section>
                    
                </article>
</asp:Content>
