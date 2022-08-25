// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract TodoList{

    uint public taskcount = 0;
    uint id = 1;

    struct Todo{
        uint _id;
        string task;
        bool success;
    }

    Todo[] public todos;

    function createTodo(string memory _task) external {
        Todo memory newTodo;
        newTodo._id = id;
        newTodo.task = _task;

        todos.push(newTodo);

        id++;
        taskcount++;
    }

    function getAllTodos() external view returns (Todo[] memory tds) {
        tds = todos;
    }

    function getOneTodo(uint _index) external view returns(Todo memory) {
        return todos[_index];  
    }

    function toggleTask(uint _index) external {
        todos[_index].success = !todos[_index].success;
    }
}