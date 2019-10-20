using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using backend.Models;
using Microsoft.AspNetCore.Mvc;

namespace backend.Controllers
{
    [ApiController]
    [Route("api/TodoList")]
    public class TodoListController : ControllerBase
    {
        private static readonly List<TodoItem> todos = new List<TodoItem>();

        [HttpGet]
        public List<TodoItem> Get() => todos;

        [HttpGet("{id}")]
        public TodoItem GetFirst(int id) => todos[id];

        [HttpPost]
        public void Add([FromBody] TodoItem todo) => todos.Add(todo);

        [HttpDelete("{id}")]
        public string Remove(string id) {
            TodoItem temp = null;
            todos.ForEach((TodoItem obj) =>
            {
                if(obj.Id == id)
                    temp = obj;
            });
            if (temp != null)
            {
                todos.Remove(temp);
                return temp.Id + " removed";
            }
            return "No item found";
        }
    }
}
