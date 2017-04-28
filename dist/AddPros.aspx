<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="AddPros.aspx.vb" Inherits="dist_AddPros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<article class="content dashboard-page">
    <section class="section">
        <div class="row">
            <ul class="nav nav-pills">
                <li class="nav-item">
                <a href="#personales" class="nav-link active" data-target="#personales" data-toggle="tab" aria-controls="personales" role="tab" aria-expanded="true">Datos Personales</a>
                </li>
                <li class="nav-item">
                <a href="#documentacion" class="nav-link" data-target="#documentacion" aria-controls="documentacion" data-toggle="tab" role="tab" aria-expanded="false">Documentacion</a>
                </li>
                <li class="nav-item">
                <a href="#familiares" class="nav-link" data-target="#familiares" aria-controls="familiares" data-toggle="tab" role="tab" aria-expanded="false">Datos Familiares</a>
                </li>
                <li class="nav-item">
                <a href="#escolaridad" class="nav-link" data-target="#escolaridad" aria-controls="escolaridad" data-toggle="tab" role="tab" aria-expanded="false">Escolaridad</a>
                </li>
                <li class="nav-item">
                <a href="#empleos" class="nav-link" data-target="#empleos" aria-controls="empleos" data-toggle="tab" role="tab" aria-expanded="false">Empleos</a>
                </li>
                <li class="nav-item">
                <a href="#referencia" class="nav-link" data-target="#referencia" aria-controls="referencia" data-toggle="tab" role="tab" aria-expanded="false">Referencias</a>
                </li>
                <li class="nav-item">
                <a href="#evaluacion" class="nav-link" data-target="#evaluacion" aria-controls="evaluacion" data-toggle="tab" role="tab" aria-expanded="false">Evaluacion</a>
                </li>
            </ul>
                               

                                            <div class="tab-content tabs-bordered">
<!--------------------------------------------------------------------------Datos Personales ------------------------------------------------------------------------------>
                                                <div class="tab-pane fade active in" id="personales" aria-expanded="true">
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
                                                             <label class="alinear-vertical margen">CP:</label>
                                                             <input type="number" class="form-control boxed margen" />
                                                         </div>
                                                        <div class="row">
                                                             <label class="alinear-vertical margen">Fecha de nacimiento:</label>
                                                             <input type="date" class="form-control boxed margen" />
                                                         </div>
                                                        <div class="row">
                                                             <label class="alinear-vertical margen">Edad:</label>
                                                             <input type="number" class="form-control boxed margen" />
                                                         </div>
                                                   </div> 
                                                   <div class="col-md-2 ">
                                                   </div>
                                                   <div class="col-md-5">
                                                         <div class="row">
                                                             <label class="alinear-vertical margen">Telefono:</label>
                                                             <input type="number" class="form-control boxed margen" />
                                                         </div>
                                                         <div class="row">
                                                             <label class="alinear-vertical margen">Celular:</label>
                                                             <input type="number" class="form-control boxed margen" />
                                                         </div>
                                                         <div class="row">
                                                             <label class="alinear-vertical margen">Lugar de Nacimiento:</label>
                                                             <input type="text" class="form-control boxed margen" />
                                                         </div>
                                                        <div class="row">
                                                             <label class="alinear-vertical margen">Sexo:</label>
                                                             <select class="form-control">
                                                                <option>Femenino</option>
                                                                <option>Masculino</option>
                                                                <option>Indistinto</option>
                                                             </select>
                                                         </div>
                                                        <div class="row">
                                                             <label class="alinear-vertical margen">Estado Civil:</label>
                                                             <select class="form-control">
                                                                <option>Soltero(a)</option>
                                                                <option>Casado(a)</option>
                                                                <option>Union Libre</option>
                                                                <option>Divorciado(a)</option>
                                                                <option>Viudo(a)</option>
                                                             </select>
                                                         </div>
                                                    </div> 
                                                  </div>
<!--------------------------------------------------------------------------Documentacion ------------------------------------------------------------------------------>
                                                  <div class="tab-pane fade" id="documentacion" aria-expanded="false">
                                                     <div class="col-md-5 "> 
                                                        <div class="row">
                                                             <label class="alinear-vertical margen">Curp:</label>
                                                             <input type="text" class="form-control boxed margen" />
                                                         </div>
                                                         <div class="row">
                                                             <label class="alinear-vertical margen">NNS:</label>
                                                             <input type="number" class="form-control boxed margen" />
                                                         </div>
                                                         <div class="row">
                                                             <label class="alinear-vertical margen">Licencia de Manejo:</label>
                                                             <select class="form-control">
                                                                <option>SI</option>
                                                                <option>NO</option>
                                                             </select>
                                                         </div>
                                                        <div class="row">
                                                             <label class="alinear-vertical margen">Numero de Licencia:</label>
                                                             <input type="number" class="form-control boxed margen" />
                                                         </div>
                                                    
                                                    </div> 
                                                    <div class="col-md-2 ">
                                                    </div>
                                                    <div class="col-md-5">
                                                         <div class="row">
                                                             <label class="alinear-vertical margen">RFC:</label>
                                                             <input type="text" class="form-control boxed margen" />
                                                         </div>
                                                        <div class="row">
                                                             <label class="alinear-vertical margen">Infonavit:</label>
                                                             <input type="text" class="form-control boxed margen" />
                                                         </div>
                                                        <div class="row">
                                                             <label class="alinear-vertical margen">Clase de Licencia:</label>
                                                             <select class="form-control">
                                                                <option>Clase 1</option>
                                                                <option>Clase 2</option>
                                                                <option>Clase 3</option>
                                                             </select>
                                                         </div>
                                                     
                                                    </div> 
                                                </div>
<!--------------------------------------------------------------------------Datos Familiares ------------------------------------------------------------------------------>
                                                  <div class="tab-pane fade" id="familiares" aria-expanded="false">
                                                      <div class="col-md-12"> 
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Nombre:</label>
                                                         <input type="text"  class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Parentesco:</label>
                                                         <select class="form-control">
                                                            <option>Padre</option>
                                                            <option>Madre</option>
                                                             <option>Esposo(a)</option>
                                                             <option>Hijos(as)</option>
                                                         </select>
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Vive:</label>
                                                         <select class="form-control">
                                                            <option>Si</option>
                                                            <option>No</option>
                                                         </select>
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Direccion:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-2">
                                                         <label class="alinear-vertical margen">Ocupacion:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                          <div class="col-md-1">
                                                         <label class="alinear-vertical margen">Edad:</label>
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
                                                                        <th>Nombre</th>
                                                                        <th>Parentesco</th>
                                                                        <th>Vive</th>
                                                                        <th>Direccion</th>
                                                                        <th>Ocupacion</th>
                                                                        <th>Edad</th>
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
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                </div>
                                                </div>
<!--------------------------------------------------------------------------Escolaridad------------------------------------------------------------------------------>
                                                <div class="tab-pane fade" id="escolaridad" aria-expanded="false">
                                                      <div class="col-md-12"> 
                                                    <div class="col-md-4">
                                                         <label class="alinear-vertical margen">Nombre:</label>
                                                         <input type="text"  class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-4">
                                                         <label class="alinear-vertical margen">Nivel:</label>
                                                         <select class="form-control">
                                                            <option>Primaria</option>
                                                            <option>Secundaria</option>
                                                             <option>Preparatoria</option>
                                                             <option>Profesional</option>
                                                         </select>
                                                    </div>
                                                    <div class="col-md-4">
                                                         <label class="alinear-vertical margen">Direccion:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-4">
                                                         <label class="alinear-vertical margen">Fecha Inicio:</label>
                                                         <input type="date" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-4">
                                                         <label class="alinear-vertical margen">Fecha Fin:</label>
                                                         <input type="date" class="form-control boxed margen" />
                                                    </div>
                                                          <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Titulo:</label>
                                                         <select class="form-control">
                                                            <option>Si</option>
                                                            <option>No</option>
                                                         </select>
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
                                                                        <th>Nombre</th>
                                                                        <th>Nivel</th>
                                                                        <th>Direccion</th>
                                                                        <th>Fecha Inicio</th>
                                                                        <th>Fecha Final</th>
                                                                        <th>Titulo</th>
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
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                </div>
                                                </div>
<!--------------------------------------------------------------------------Empleos------------------------------------------------------------------------------>
                                                <div class="tab-pane fade" id="empleos" aria-expanded="false">
                                                  <div class="col-md-12"> 
                                                     <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Nombre:</label>
                                                         <input type="text"  class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Telefono:</label>
                                                         <input type="text"  class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Puesto:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Fecha Inicio:</label>
                                                         <input type="date" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Fecha Fin:</label>
                                                         <input type="date" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Sueldo:</label>
                                                         <input type="number" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Nombre de su jefe:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Puesto de su jefe:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-11">
                                                         <label class="alinear-vertical ">Motivo de Separacion:</label>
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
                                                                        <th>Nombre</th>
                                                                        <th>Telefono</th>
                                                                        <th>Puesto</th>
                                                                        <th>Fecha Inicio</th>
                                                                        <th>Fecha Fin</th>
                                                                        <th>Sueldo</th>
                                                                        <th>Nombre Jefe</th>
                                                                        <th>Puesto Jefe</th>
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
                                                                        <td></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                             <table class="table table-striped table-bordered table-hover flip-content">
                                                                <thead class="flip-header">
                                                                    <tr>
                                                                        <th>Motivo de separacion</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="gradeA">
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </section>
                                                </div>
                                                </div>
<!--------------------------------------------------------------------------Referencia------------------------------------------------------------------------------>
                                                <div class="tab-pane fade" id="referencia" aria-expanded="false">
                                                      <div class="col-md-12"> 
                                                    <div class="col-md-6">
                                                         <label class="alinear-vertical margen">Nombre:</label>
                                                         <input type="text"  class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-6">
                                                         <label class="alinear-vertical margen">Direccion:</label>
                                                         <input type="text"  class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-4">
                                                         <label class="alinear-vertical margen">Telefono:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-4">
                                                         <label class="alinear-vertical margen">Ocupacion:</label>
                                                         <input type="text" class="form-control boxed margen" />
                                                    </div>
                                                    <div class="col-md-3">
                                                         <label class="alinear-vertical margen">Tiempo de Conocerlo:</label>
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
                                                                        <th>Nombre</th>
                                                                        <th>Direccion</th>
                                                                        <th>Telefono</th>
                                                                        <th>Ocupacion</th>
                                                                        <th>Tiempo de Conocerlo</th>
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
                                                </div>
<!--------------------------------------------------------------------------Evaluacion ------------------------------------------------------------------------------>
                                                <div class="tab-pane fade" id="evaluacion" aria-expanded="false">
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
                                            </div>
                                        </div>
            </div>
                    </section>
                </article>

</asp:Content>
