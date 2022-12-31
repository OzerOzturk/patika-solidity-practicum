// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//insert, update, read from array of structs

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }
    //creating a todo array
    Todo[] public todos;

    //create a new todo
    function create(string calldata _text) external {
        todos.push(Todo({text: _text, completed: false}));
    }

    //update the todo
    function updateText(uint256 _index, string calldata _text) external {
        todos[_index].text = _text;
    }

    //call the todo
    function get(uint256 _index) external view returns (string memory, bool) {
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    //change the situation of todo
    function toggleCompleted(uint256 _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}
