<?php
$Name = 'reporte' . '.xls';
header('Expires: 0');
header('Cache-control: private');
header("Content-type: application/vnd.ms-excel"); // Archivo de Excel
header("Cache-Control: cache, must-revalidate");
header('Content-Description: File Transfer');
header('Last-Modified: ' . date('D, d M Y H:i:s'));
header("Pragma: public");
header('Content-Disposition:; filename="' . $Name . '"');
header("Content-Transfer-Encoding: binary");

echo utf8_decode("<table border='0'>

		<tr>
		<td style='font-weight:bold; border:1px solid #eee;'>CÓDIGO</td>
		<td style='font-weight:bold; border:1px solid #eee;'>CLIENTE</td>
		<td style='font-weight:bold; border:1px solid #eee;'>VENDEDOR</td>
		<td style='font-weight:bold; border:1px solid #eee;'>CANTIDAD</td>
		<td style='font-weight:bold; border:1px solid #eee;'>PRODUCTOS</td>
		<td style='font-weight:bold; border:1px solid #eee;'>IMPUESTO</td>
		<td style='font-weight:bold; border:1px solid #eee;'>NETO</td>
		<td style='font-weight:bold; border:1px solid #eee;'>TOTAL</td>
		<td style='font-weight:bold; border:1px solid #eee;'>METODO DE PAGO</td
		<td style='font-weight:bold; border:1px solid #eee;'>FECHA</td>
		</tr>
		</table>");

