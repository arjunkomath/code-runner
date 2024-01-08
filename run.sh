#!/bin/bash

JSON=$(cat <<-END
{
    "language": "deno",
    "files": [
        {
            "name": "hello.ts",
            "content": "import _ from 'npm:lodash';\nconsole.log(_.partition([1, 2, 3, 4], n => n % 2));"
        }
    ]
}
END)

echo $JSON | cargo run
