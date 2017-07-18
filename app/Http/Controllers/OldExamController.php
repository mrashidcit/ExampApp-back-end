<?php

namespace App\Http\Controllers;

use App\OldExam;
use Illuminate\Http\Request;

class OldExamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $exams = OldExam::all();

        return view('showphoto', compact('exams'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $files = $request->file('photo');

        echo $request->board_id  . "<br>";
        echo $request->year_id  . "<br>";
        echo $request->class_id  . "<br>";
        echo $request->subject_id  . "<br>";



        foreach ($files as $file){
            if(!$request->hasFile('photo')){

                // there is no file anymore
                break;
            }
            $name =  str_random(12);
            $ext = $file->extension();

            $file->storeAs('public/', $name . "." . $ext);

            $fullName = 'storage/' . $name . "." . $ext;

            OldExam::create([
                'board_id' => $request->board_id,
                'year_id' => $request->year_id,
                'class_id' => $request->class_id,
                'subject_id' => $request->subject_id,
                'file_name' => $fullName,

            ]);
            echo $fullName . "<br>";
        }

        return "true";

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
