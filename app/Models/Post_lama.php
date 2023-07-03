<?php

namespace App\Models;


class Post
{
    private static $blog_posts =   [
        [
            "title" => "Postingan Pertama",
            "slug" => "postingan-pertama",
            "author" => "Buc Sama",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. A eveniet accusantium molestiae sint. Impedit quo nulla ipsum doloribus aliquid dolor, eos modi magni id, at sit expedita magnam. Tempore, possimus aspernatur? Nesciunt illo omnis, aliquam praesentium harum, voluptate maiores blanditiis provident sapiente eius doloribus voluptas quia animi facilis natus enim ipsam pariatur cupiditate voluptatum dolorum quis ut tempora. Officiis laudantium eum a expedita sequi id cumque architecto ipsum error optio perferendis nisi, corrupti hic ea est quis ad quod iure, ratione non nobis tempore sed? Vero, maiores doloribus corrupti velit est deserunt nisi, libero id, voluptates eum laboriosam distinctio accusantium."
        ],
        [
            "title" => "Postingan Kedua",
            "slug" => "postingan-kedua",
            "author" => "Diki",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam ut non esse culpa reiciendis ipsa doloribus, rerum consequatur, maxime porro quia! Rerum incidunt nobis eum! Amet dolorem maiores temporibus ipsa, aspernatur eum sequi dolor id fugit adipisci repudiandae laborum eos atque. Laboriosam ab, omnis nam maxime in numquam voluptate quo."
        ],
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
