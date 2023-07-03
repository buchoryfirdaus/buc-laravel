<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'Register',
            'active' => 'register'
        ]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255', //memakai tanda pipe
            'username' => ['required', 'min:3', 'max:255', 'unique:users'], //memakai array
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:6|max:255'
        ]);

        // $validatedData['password'] = bcrypt($validatedData['password']); ini menggunakan metode 1
        $validatedData['password'] = Hash::make($validatedData['password']);  // ini menggunakan hashing cara ke 2

        User::create($validatedData);

        // $request->session()->flash('success', 'Registration successfull! Please login'); ini flash message dengan cara 1

        return redirect('/login')->with('success', 'Registration successfull! Please login'); // ini flash message dengan cara 2
    }
}
