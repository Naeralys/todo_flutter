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
        private static readonly List<TodoItem> todos = new List<TodoItem>() {new TodoItem("A simple todo")};

        [HttpGet]
        public List<TodoItem> Get() => todos;

        [HttpGet("{index}")]
        public TodoItem GetFirst(int index) => todos[index];

        [HttpPost]
        public IActionResult Add(string name) {
            return Content(name);
        }
    }
}
