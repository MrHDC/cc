<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="utf-8" />
	<link rel='stylesheet' id='open-sans-css'  href='//fonts.googleapis.com/css?family=Open+Sans%3A300italic%2C400italic%2C600italic%2C300%2C400%2C600&#038;subset=latin%2Clatin-ext&#038;ver=4.0' type='text/css' media='all' />
	<link href='css/bootstrap.min.css' rel='stylesheet'/>
	<link href='css/style.css' rel='stylesheet'/>
  <link href='css/font-awesome/css/font-awesome.min.css' rel='stylesheet'/>
	<script src="https://code.jquery.com/jquery.js"></script>
	<script>
		$(function() {
			$(".tt").tooltip();
		});
	</script>



</head>
<body>


<header id="header" class="app-header navbar bg-success" role="menu">      
<!-- navbar header -->
      <!-- navbar right -->
      <ul class="nav navbar-nav navbar-right m-r-n">
          <li>            
            <a href="" class="clear no-padding-h ng-scope" bs-dropdown="dropdown" data-animation="am-collapse" data-template="user">
              <img src="avatar.jpg" alt="..." class="navbar-img pull-right">
              <span class="hidden-sm m-l">DinhNV</span>
              <b class="caret m-h-xs hidden-sm"></b>
            </a>
            <script type="text/ng-template" id="user">
              <ul class="dropdown-menu pull-right no-b-t">
                <li>
                  <a ui-sref="page.profile">Profile</a>
                </li>
                <li>
                  <a ui-sref="page.settings">Settings</a>
                </li>
                <li class="divider">
                <li>
                  <a ui-sref="lockme">Lock me</a>
                </li>
                <li>
                  <a ui-sref="signin">Logout</a>
                </li>
              </ul>
            </script>
          </li>
        </ul>
     </header>


<div class="page-container">
<div class="page-sidebar page-sidebar-fixed">
  <ul>
    <li><a href="">Chấm công</a></li>
    <li><a href="">Báo cáo</a></li>
    <li><a href="">Tùy chỉnh</a></li>
  </ul>
</div>
	
    <div class="page-content">
    <div class="page-content-wrap">
                        <div class="col-md-12">
                            
                            
                            <!-- START DATATABLE EXPORT -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Báo cáo</h3>
                                    <div class="btn-group pull-right">
                                        <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Xuất báo cáo</button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'false'});"><img src='img/icons/json.png' width="24"/> JSON</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'false',ignoreColumn:'[2,3]'});"><img src='img/icons/json.png' width="24"/> JSON (ignoreColumn)</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'true'});"><img src='img/icons/json.png' width="24"/> JSON (with Escape)</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'xml',escape:'false'});"><img src='img/icons/xml.png' width="24"/> XML</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'sql'});"><img src='img/icons/sql.png' width="24"/> SQL</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'csv',escape:'false'});"><img src='img/icons/csv.png' width="24"/> CSV</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'txt',escape:'false'});"><img src='img/icons/txt.png' width="24"/> TXT</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'excel',escape:'false'});"><img src='img/icons/xls.png' width="24"/> XLS</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'doc',escape:'false'});"><img src='img/icons/word.png' width="24"/> Word</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'powerpoint',escape:'false'});"><img src='img/icons/ppt.png' width="24"/> PowerPoint</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'png',escape:'false'});"><img src='img/icons/png.png' width="24"/> PNG</a></li>
                                            <li><a href="#" onClick ="$('#customers2').tableExport({type:'pdf',escape:'false'});"><img src='img/icons/pdf.png' width="24"/> PDF</a></li>
                                        </ul>
                                    </div>                                    
                                    
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                    <table id="customers2" class="table datatable">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Ho va ten</th>
                                                <th>Tong ngay cong</th>
                                                <th>Tong ngay thuc te</th>
                                                <th>Thuong/Phu cap</th>
                                                <th>Tong tien</th>
                                                <th>Ghi chu</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr> 
                                                <td>1</td>
                                                <td>Nguyen Van Dinh</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>2</td>
                                                <td>Le Huu Dong</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>3</td>
                                                <td>Pham Kieu Thanh</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>4</td>
                                                <td>Luong Ba Trung</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>5</td>
                                                <td>Le Hoang Yen</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>6</td>
                                                <td>Hoang Trong Phuc</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>7</td>
                                                <td>Vu Manh Truong</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>8</td>
                                                <td>Nguyen Hoang Son</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>9</td>
                                                <td>Pham Thao Quynh Mai</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>10</td>
                                                <td>Do Thi Thanh</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>11</td>
                                                <td>Le Thuong Quan</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>12</td>
                                                <td>Nguyen Thu Hang</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>13</td>
                                                <td>Le Trung Hieu</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                            <tr> 
                                                <td>14</td>
                                                <td>Nguyen Quang Nam</td>
                                                <td>30</td>
                                                <td>30</td>
                                                <td>500k</td>
                                                <td>1000.000</td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>                                    
                                    </div>
                                </div>
                            </div>
                            <!-- END DATATABLE EXPORT -->                        
                        
</div>
                        </div>
                    </div>
</div>


    <!-- THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='js/plugins/icheck.min.js'></script>
        <script type="text/javascript" src="http://aqvatarius.com/themes/atlant_v1_2/html/js/plugins/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/plugins/tableExport.js"></script>
  <script type="text/javascript" src="js/plugins/jquery.base64.js"></script>
  <script type="text/javascript" src="js/plugins/html2canvas.js"></script>
  <script type="text/javascript" src="js/plugins/sprintf.js"></script>
  <script type="text/javascript" src="js/plugins/jspdf.js"></script>
  <script type="text/javascript" src="js/plugins/base64.js"></script>        
       

         <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/plugins/plugins.js"></script>        
        <script type="text/javascript" src="js/plugins/actions.js"></script>        
        <!-- END TEMPLATE -->


<!-- Bootstrap core JavaScript
	================================================== -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>