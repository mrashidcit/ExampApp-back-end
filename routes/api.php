<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:api');
*/

Route::get('/subjects/oneGrade/{id}', [
    'uses' => 'SubjectsController@getSubjectsofOneGrade',
    'as' => 'subjects.oneGrade'
]);

Route::get('/questions/question-list/{id}', [
    'uses' => 'QuestionsController@getQuestionsList',
    'as' => 'questions.list'
]);

Route::resource('classes', 'ClassesController');


Route::resource('subjects', 'SubjectsController');



Route::resource('questions', 'QuestionsController');

Route::resource('boards', 'BoardController');

Route::resource('years', 'YearController');

Route::resource('oldexams', 'OldExamController');


Route::resource('authenticate', 'AuthenticateController', [
    'only' => ['index']
]);
Route::post('authenticate', 'AuthenticateController@authenticate');