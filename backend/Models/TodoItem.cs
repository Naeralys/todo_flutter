using System;
namespace backend.Models
{
    public class TodoItem
    {
        private string _name;
        public TodoItem(string name)
        {
            _name = name;
        }
        public string Name { get => _name; set => _name = value; }
    }
}
