<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        User::create([
            'name' => 'Buchory Firdaus',
            'username' => 'buchoryafirdaus',
            'email' => 'buchoryaf@gmail.com',
            'password' => bcrypt('password')
        ]);

        // User::create([
        //     'name' => 'Rafael Florin',
        //     'email' => 'raflor@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Hacker',
            'slug' => 'hacker'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'Personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Postingan Pertama',
        //     'slug' => 'postingan-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae, enim!',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eum sequi cum laudantium error aliquam corporis quaerat facilis, repudiandae quibusdam provident et pariatur eveniet minus at consequatur delectus vel voluptatibus praesentium dolor quasi asperiores nam? Eum, cum quo. Reprehenderit consequatur doloremque quasi quia quam debitis atque placeat earum sequi! Culpa dolor est officiis beatae laborum illo possimus, autem pariatur, sint voluptas illum exercitationem cupiditate magnam animi cum! Excepturi aperiam voluptate possimus similique modi quasi tenetur, incidunt rerum unde ducimus rem ut dicta ipsa voluptatem hic consequatur ipsam deleniti non distinctio repellendus alias iste, quibusdam dolorem earum. Quibusdam tenetur error iure magnam!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Postingan Kedua',
        //     'slug' => 'postingan-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae, enim!',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eum sequi cum laudantium error aliquam corporis quaerat facilis, repudiandae quibusdam provident et pariatur eveniet minus at consequatur delectus vel voluptatibus praesentium dolor quasi asperiores nam? Eum, cum quo. Reprehenderit consequatur doloremque quasi quia quam debitis atque placeat earum sequi! Culpa dolor est officiis beatae laborum illo possimus, autem pariatur, sint voluptas illum exercitationem cupiditate magnam animi cum! Excepturi aperiam voluptate possimus similique modi quasi tenetur, incidunt rerum unde ducimus rem ut dicta ipsa voluptatem hic consequatur ipsam deleniti non distinctio repellendus alias iste, quibusdam dolorem earum. Quibusdam tenetur error iure magnam!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Postingan Ketiga',
        //     'slug' => 'postingan-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae, enim!',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eum sequi cum laudantium error aliquam corporis quaerat facilis, repudiandae quibusdam provident et pariatur eveniet minus at consequatur delectus vel voluptatibus praesentium dolor quasi asperiores nam? Eum, cum quo. Reprehenderit consequatur doloremque quasi quia quam debitis atque placeat earum sequi! Culpa dolor est officiis beatae laborum illo possimus, autem pariatur, sint voluptas illum exercitationem cupiditate magnam animi cum! Excepturi aperiam voluptate possimus similique modi quasi tenetur, incidunt rerum unde ducimus rem ut dicta ipsa voluptatem hic consequatur ipsam deleniti non distinctio repellendus alias iste, quibusdam dolorem earum. Quibusdam tenetur error iure magnam!',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
