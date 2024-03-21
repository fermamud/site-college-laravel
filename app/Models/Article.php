<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;
use App\Http\Resources\ArticleResource;

class Article extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'article'];

    protected $casts = [
        'article' => 'array',
    ];

    //testei com esse mas da erro
    
    // public function get($model, $key, $value, $attributes)
    // {
    //     return json_decode($value, true);
    // }
    
    // public function set($model, $key, $value, $attributes)
    // {
    //     return json_encode($value);
    // }
    
    
    // este tbm da erro
    // public function user()
    // {
    //     return $this->belongsTo(User::class);
    // }
    // protected function article(): Attribute {
    //     return Attribute::make(
    //         get: fn($value) => json_decode($value, true),
    //         set: fn($value) => json_encode($value)
    //     );
    // }

    static function articles() {
        $resources = ArticleResource::collection(self::select()->orderby('article')->get());
        $data = json_encode($resources);
        return json_decode($data, true);
    }
}
