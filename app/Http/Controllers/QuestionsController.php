<?php

namespace App\Http\Controllers;

use App\Question;
use Illuminate\Http\Request;

class QuestionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = Question::all();

        $response = [
            'questions' => $questions
        ];


        return response()->json($response, 200);
    }


    public function getQuestionsList($id){

       
       
       $questions = Question::where('subject_id', $id)
                        ->inRandomOrder()
                        ->take(10)
                        ->get();
                        //->paginate(10);

        $response = [
            'questions' => $questions
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
        $subject_id = $request['subject_id'];

        $question = Question::create([
            'board_id' => $request['board_id'],
            'year_id' => $request['year_id'],
            'class_id' => $request['class_id'],
            'subject_id' => $request['subject_id'],
            'question' => $request['question'],
            'a' => $request['a'],
            'b' => $request['b'],
            'c' => $request['c'],
            'd' => $request['d'],
            'correct_option' => $request['correct_option']

        ]);

        return response()->json(['question' => $question], 201);




        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $question = Question::find($id);
        return response()->json(['question' => $question], 201);
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
        $question = Question::find($id);

        

        $question->question = $request['question'];
        $question->a = $request['a'];
        $question->b = $request['b'];
        $question->c = $request['c'];
        $question->d = $request['d'];
        $question->correct_option = $request['correct_option'];

        $question->save();

        $response = [
            'question' => $question

        ];

        return response()->json($response, 200);
        
        
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
