<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ArticleResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $locale = app()->getLocale();

        $articleTitle = isset($this->article[`article_title_$locale`]) ? $this->article[`article_title_$locale`] : $this->article['article_title_en'];
        $articleContent = isset($this->article[`article_content_$locale`]) ? $this->article[`article_content_$locale`] : $this->article['article_content_en'];

        return [
            'id' => $this->id,
            'article_title' => $articleTitle,
            'article_content' => $articleContent
        ];
    }
}
