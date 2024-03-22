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

    static function articles() {
        $resources = ArticleResource::collection(self::select()->orderby('article')->get());
        $data = json_encode($resources);
        return json_decode($data, true);
    }

    public function user() {
        return $this->belongsTo(User::class);
    }
}
