<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="asistencia.aspx.vb" Inherits="dist_asistencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<article class="content dashboard-page">
                   
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
            <fieldset>
            <legend> Con Falta</legend>
                <select class="form-control">
                        <option>--Selecciona una Opcion--</option>
                        <option>Si</option>
                        <option>No</option>
                        <option>No Asignada</option>
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
                                        <th>Puesto</th>
                                        <th>Turno</th>
                                        <th>Jefe Directo</th>
                                        <th>Asistencia</th>
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
                                        <td class="detalle"><a href="#"><i class="fa fa-eye "></i></a></td>
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

