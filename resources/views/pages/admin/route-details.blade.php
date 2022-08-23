@extends('layouts.app')

@section('template_title')
	Routing Information
@endsection

@section('content')
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				@include('partials.form-status')

				<div class="card">
					<div class="card-header">
						Informacje o routingu
						<span class="badge badge-primary pull-right">{{ count($routes) }} routes</span>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-striped table-sm data-table">
								<thead>
									<tr class="success">
					                    <th>URI</th>
					                    <th>Nazwa</th>
					                    <th>Typ</th>
					                    <th>Metoda</th>
									</tr>
								</thead>
								<tbody>
							        @foreach ($routes as $route)
										<tr>
				                        <td>{{$route->uri}}</td>
				                        <td>{{$route->getName()}}</td>
				                        <td>{{$route->getPrefix()}}</td>
				                        <td>{{$route->getActionMethod()}}</td>
										</tr>
							        @endforeach
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection
