<?php

namespace App\Http\Controllers;

use App\Subject;
use Illuminate\Http\Request;

class SubjectsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return 'hello';
        $subjects = Subject::all();



        $response = [
            'subjects' => $subjects
        ];

        return response()->json($response, 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $subject = new Subject();

        $subject->class_id = $request->input('class_id');
        $subject->name = $request->input('name');
        $subject->save();

        return response()->json(['subject' => $subject], 201);
    }


    // Show Subjects of Class according to give Class_Id

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // Here $id contain class_id
        $subjects = Subject::where('class_id', '=', $id)->get();
        if(!$subjects){
            return response()->json(['message' => 'Subject not found'], 404);
        }

        return response()->json(['subjects' => $subjects], 200);
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
        $subject = Subject::find($id);
        if(!$subject){
            return response()->json(['message' => 'Subject not found'], 404);
        }

        $subject->name = $request->input('name');
        $subject->save();

        return response()->json(['subject' => $subject], 200);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $subject = Subject::find($id);
        if(!$subject){
            return response()->json(['message' => 'Subject not found'], 404);
        }

        $subject->delete();

        return response()->json(['message' => 'Subject deleted!'], 201);

    }
}
