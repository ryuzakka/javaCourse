<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Table Test</title>
		<style>
			table, td{
				text-align:center;
			}
		</style>
	</head>
	<body>
		<!-- 웹문서에 표 만들기 : table, tr, td -->
		<table border="1" width="100" height="100">
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
			</tr>
			<tr>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
				<td>7</td>
				<td>8</td>
				<td>9</td>
			</tr>
		</table>
		<hr>
		<table border="1" width="100" height="100">
			<tr>
				<td>1</td>
				<td colspan="2">2</td>	<!-- 2번, 3번 셀 합치기 -->
				<!-- <td>3</td> -->
			</tr>
			<tr>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
				<td>7</td>
				<td>8</td>
				<td>9</td>
			</tr>
		</table>
		<hr>
		<table border="1" width="100" height="100">
			<tr>
				<td rowspan="3">1</td>	<!-- 1번, 4번 셀 합치기 -->
				<td>2</td>
				<td>3</td>
			</tr>
			<tr>
				<!-- <td>4</td> -->
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
				<!-- <td>7</td> -->
				<td>8</td>
				<td>9</td>
			</tr>
		</table>
		<hr>
		<table border="1" width="400" height="400">
			<tr>
				<td>1</td>
				<td>2</td>
				<td colspan="3">3</td>
				<!-- <td>4</td> -->
				<!-- <td>5</td> -->
			</tr>
			<tr>
				<td rowspan="2">6</td>
				<td>7</td>
				<td>8</td>
				<td>9</td>
				<td>10</td>
			</tr>
			<tr>
				<!-- <td>11</td> -->
				<td>12</td>
				<td colspan="3">13</td>
				<!-- <td>14</td> -->
				<!-- <td>15</td> -->
			</tr>
			<tr>
				<td colspan="2" rowspan="2">16</td>
				<!-- <td>17</td> -->
				<td>18</td>
				<td>19</td>
				<td rowspan="2">20</td>
			</tr>
			<tr>
				<!-- <td>21</td> -->
				<!-- <td>22</td> -->
				<td>23</td>
				<td>24</td>
				<!-- <td>25</td> -->
			</tr>
		</table>
	</body>
</html>