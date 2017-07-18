<%@ Page Title="" Language="VB" MasterPageFile="~/dist/Principal.master" AutoEventWireup="false" CodeFile="AddPros.aspx.vb" Inherits="dist_AddPros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<article class="content dashboard-page">
    <section class="section">
        <form runat="server">
            <asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>   
             
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
                                                             <label class="alinear-vertical margen">NSS:</label>
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
                                                    <asp:UpdatePanel id="UpdatePanel2" UpdateMode="Conditional" runat="server">
                                                    <ContentTemplate>  
                                                        <div class="col-md-12"> 
                                                            <div class="col-md-4">
                                                                 <label class="alinear-vertical margen">Nombre:</label>
                                                                 <input Id="INombreDF" runat="server" type="text" class="form-control boxed margen" />
                                                            </div>
                                                            <div class="col-md-3">
                                                                 <label class="alinear-vertical margen">Parentesco:</label>
                                                                 <select Id="SParentesco" runat="server" class="form-control">
                                                                     <option value="Padre">Padre</option>
                                                                     <option value="Madre">Madre</option>
                                                                     <option value="Esposo(a)">Esposo(a)</option>
                                                                     <option value="Hijos(as)">Hijos(as)</option>
                                                                 </select>
                                                            </div>
                                                             <div class="col-md-4">
                                                                 <label class="alinear-vertical margen">Vive Con:</label>
                                                                 <input Id="IviveCon" runat="server" type="text" class="form-control boxed margen" />
                                                            </div>
                                                            <div class="col-md-2">
                                                                 <label class="alinear-vertical margen">Edad:</label>
                                                                <asp:TextBox ID="IEdadF" runat="server" placeholder="" type="number" CssClass="form-control boxed margen"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-2">
                                                                 <label class="alinear-vertical margen">Vive:</label>
                                                                 <select Id="SVive" runat="server" class="form-control">
                                                                    <option value="Si">Si</option>
                                                                    <option value="No">No</option>
                                                                 </select>
                                                            </div>
                                                            <div class="col-md-4">
                                                                 <label class="alinear-vertical margen">Direccion:</label>
                                                                 <input Id="IDireccionDF" runat="server" type="text" class="form-control boxed margen" />
                                                            </div>
                                                            <div class="col-md-3">
                                                                 <label class="alinear-vertical margen">Ocupacion:</label>
                                                                 <input Id="IOcupacionF" runat="server" type="text" class="form-control boxed margen" />
                                                            </div>
                                                            <div class="col-md-1">
                                                                <br />
                                                                <asp:LinkButton id="BtnAddDF" runat="server"><i class="fa fa-plus-square fa-3x"></i></asp:LinkButton>
                                                            </div>
                                                        </div> 
                                                        <div class="col-md-12 ">
                                                        <section class="example">
                                                            <div class="table-flip-scroll">
                                                                <asp:GridView id="GvDF" runat="server" GridLines="None" CssClass="table table-striped table-bordered table-hover flip-content" 
                                                                            ShowHeaderWhenEmpty="true" AutoGenerateColumns="False" AutoPostBack="true" CausesValidation="false">
                                                                <Columns>
                                                                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Parentesco" DataField="Parentesco" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="ViveCon" DataField="ViveCon" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Vive" DataField="Vive" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Direccion" DataField="Direccion" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Ocupacion" DataField="Ocupacion" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Edad" DataField="Edad" ItemStyle-CssClass="active"/>
                                                                </Columns>
                                                                </asp:GridView> 
                                                            </div>
                                                        </section>
                                                        </div>                                                    
                                                    </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>
<!--------------------------------------------------------------------------Escolaridad------------------------------------------------------------------------------>
                                                <div class="tab-pane fade" id="escolaridad" aria-expanded="false">
                                                    <asp:UpdatePanel id="UpdatePanel1" UpdateMode="Conditional" runat="server">
                                                    <ContentTemplate>  
                                                    <div class="col-md-12"> 
                                                        <div class="col-md-4">
                                                             <label class="alinear-vertical margen">Nombre:</label>
                                                             <input Id="INomEscuela" runat="server" type="text" class="form-control boxed margen" />
                                                        </div>
                                                        <div class="col-md-4">
                                                            <label class="alinear-vertical margen">Nivel:</label>
                                                             
                                                            <select Id="SNivel" runat="server" class="form-control">
                                                                <option value="Primaria">Primaria</option>
                                                                <option value="Secundaria">Secundaria</option>
                                                                <option value="Preparatoria">Preparatoria</option>
                                                                <option value="Profesional">Profesional</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-4">
                                                             <label class="alinear-vertical margen">Direccion:</label>
                                                             <input Id="IDireccion" runat="server" type="text" class="form-control boxed margen" />
                                                        </div>
                                                        <div class="col-md-4">
                                                             <label class="alinear-vertical margen">Fecha Inicio:</label>
                                                             <asp:TextBox ID="IFechaIni" runat="server" placeholder="" type="date" CssClass="form-control boxed margen"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-4">
                                                             <label class="alinear-vertical margen">Fecha Fin:</label>
                                                             <asp:TextBox ID="IFechaFin" runat="server" placeholder="" type="date" CssClass="form-control boxed margen"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Titulo:</label>
                                                             <select Id="STitulo" runat="server" class="form-control">
                                                                <option value="Si">Si</option>
                                                                <option value="No">No</option>
                                                             </select>
                                                        </div>
                                                        <div class="col-md-1">
                                                            <br />
                                                            <asp:LinkButton id="BtnAddEscolaridad" runat="server"><i class="fa fa-plus-square fa-3x"></i></asp:LinkButton>
                                                        </div>
                                                    </div> 
                                                <div class="col-md-12 ">
                                                    <section class="example">
                                                        <div class="table-flip-scroll">
                                                            <asp:GridView id="GvEscolaridad" runat="server" GridLines="None" CssClass="table table-striped table-bordered table-hover flip-content" 
                                                                            ShowHeaderWhenEmpty="true" AutoGenerateColumns="False" AutoPostBack="true" CausesValidation="false">
                                                                <Columns>
                                                                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Nivel" DataField="Nivel" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Direccion" DataField="Direccion" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Fecha Inicio" DataField="Fecha_Inicio" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Fecha Final" DataField="Fecha_Final" ItemStyle-CssClass="active"/>
                                                                    <asp:BoundField HeaderText="Titulo" DataField="Titulo" ItemStyle-CssClass="active"/>
                                                                </Columns>
                                                            </asp:GridView>  
                                                        </div>
                                                    </section>
                                                </div>
                                                </ContentTemplate>
                                                </asp:UpdatePanel>
                                                </div>
<!--------------------------------------------------------------------------Empleos------------------------------------------------------------------------------>
                                                <div class="tab-pane fade" id="empleos" aria-expanded="false">
                                                    <asp:UpdatePanel id="UpdatePanel3" UpdateMode="Conditional" runat="server">
                                                    <ContentTemplate>  
                                                    <div class="col-md-12"> 
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Nombre:</label>
                                                             <input Id="INombreEMP" runat="server" type="text"  class="form-control boxed margen" />
                                                        </div>
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Telefono:</label>
                                                             <input Id="ITelefonoEMP" runat="server" type="text"  class="form-control boxed margen" />
                                                        </div>
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Puesto:</label>
                                                             <input Id="IPuestoEMP" runat="server" type="text" class="form-control boxed margen" />
                                                        </div>
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Fecha Inicio:</label>
                                                             <asp:TextBox ID="IFechaIniEMP" runat="server" placeholder="" type="date" CssClass="form-control boxed margen"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Fecha Fin:</label>
                                                             <asp:TextBox ID="IFechaFinEMP" runat="server" placeholder="" type="date" CssClass="form-control boxed margen"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Sueldo:</label>
                                                             <asp:TextBox ID="ISueldoEMP" runat="server" placeholder="" type="number" CssClass="form-control boxed margen"></asp:TextBox>                                                         
                                                        </div>
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Nombre de su jefe:</label>
                                                             <input Id="INomJefeEMP" runat="server" type="text" class="form-control boxed margen" />
                                                        </div>
                                                        <div class="col-md-3">
                                                             <label class="alinear-vertical margen">Puesto de su jefe:</label>
                                                             <input Id="IPuestoJefeEMP" runat="server" type="text" class="form-control boxed margen" />
                                                        </div>
                                                        <div class="col-md-11">
                                                             <label class="alinear-vertical ">Motivo de Separacion:</label>
                                                             <input Id="IMovSep" runat="server" type="text" class="form-control boxed margen" />
                                                        </div>
                                                        <div class="col-md-1">
                                                            <br />
                                                            <asp:LinkButton id="BtnAddEmpleo" runat="server"><i class="fa fa-plus-square fa-3x"></i></asp:LinkButton>
                                                        </div>
                                                    </div> 
                                                    <div class="col-md-12 ">
                                                        <section class="example">
                                                            <div class="table-flip-scroll">
                                                                <asp:GridView id="GVEmpleos" runat="server" GridLines="None" CssClass="table table-striped table-bordered table-hover flip-content" 
                                                                                ShowHeaderWhenEmpty="true" AutoGenerateColumns="False" AutoPostBack="true" CausesValidation="false">
                                                                    <Columns>
                                                                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" ItemStyle-CssClass="active"/>
                                                                        <asp:BoundField HeaderText="Telefono" DataField="Telefono" ItemStyle-CssClass="active"/>
                                                                        <asp:BoundField HeaderText="Puesto" DataField="Puesto" ItemStyle-CssClass="active"/>
                                                                        <asp:BoundField HeaderText="Fecha Inicio" DataField="Fecha_Inicio" ItemStyle-CssClass="active"/>
                                                                        <asp:BoundField HeaderText="Fecha Final" DataField="Fecha_Final" ItemStyle-CssClass="active"/>
                                                                        <asp:BoundField HeaderText="Sueldo" DataField="Sueldo" ItemStyle-CssClass="active"/>
                                                                        <asp:BoundField HeaderText="Nombre Jefe" DataField="Nom_Jefe" ItemStyle-CssClass="active"/>
                                                                        <asp:BoundField HeaderText="Puesto Jefe" DataField="Pues_Jefe" ItemStyle-CssClass="active"/>
                                                                    </Columns>
                                                                </asp:GridView>  
                                                             
                                                                <asp:GridView id="GvMotivoE" runat="server" GridLines="None" CssClass="table table-striped table-bordered table-hover flip-content" 
                                                                                ShowHeaderWhenEmpty="true" AutoGenerateColumns="False" AutoPostBack="true" CausesValidation="false">
                                                                    <Columns>
                                                                        <asp:BoundField HeaderText="Motivo de separacion" DataField="Mot_Separacion" ItemStyle-CssClass="active"/>
                                                                    </Columns>
                                                                </asp:GridView> 
                                                            </div>
                                                        </section>
                                                    </div>
                                                    </ContentTemplate>
                                                    </asp:UpdatePanel>
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

                                                    <a href="AddPros.aspx" class="btn btn-success-outline center addpro"> Guardar  </a>
                                                    <a href="AddPros.aspx" class="btn btn-primary-outline center addpro"> Cancelar  </a>
                                            </div>
                        </div>
                    </div>
                
        </form>
    </section>
</article>

</asp:Content>
