@extends('layouts.main')
@section('container')
    <H1>Halaman About</H1>
    <h3>{{ $anime }}</h3>
    <p>{{ $pengarang }}</p>
    <img src="img/{{ $image }}" alt="{{ $anime }}" width="200" class="img-thumbnail rounded-circle">
@endsection
