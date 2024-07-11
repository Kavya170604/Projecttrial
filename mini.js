document.addEventListener('DOMContentLoaded', function () {
    const taskForm = document.getElementById('taskForm');
    const taskList = document.getElementById('taskList');
  
    // Load tasks from localStorage
    let tasks = JSON.parse(localStorage.getItem('tasks')) || [];
  
    // Function to render tasks
    function renderTasks() {
      taskList.innerHTML = '';
      tasks.forEach((task, index) => {
        const li = document.createElement('li');
        li.innerHTML = `
          <span class="${task.completed ? 'completed' : ''}">${task.title}</span>
          <span>${task.description ? `- ${task.description}` : ''}</span>
          <button class="complete-btn" data-index="${index}">${task.completed ? 'Undo' : 'Complete'}</button>
          <button class="delete-btn" data-index="${index}">Delete</button>
        `;
        taskList.appendChild(li);
      });
      localStorage.setItem('tasks', JSON.stringify(tasks));
    }
  
    // Initial render
    renderTasks();
  
    // Form submit event listener
    taskForm.addEventListener('submit', function (e) {
      e.preventDefault();
      const taskTitle = document.getElementById('taskTitleInput').value;
      const taskDesc = document.getElementById('taskDescInput').value;
      if (taskTitle.trim() !== '') {
        tasks.push({
          title: taskTitle,
          description: taskDesc,
          completed: false
        });
        renderTasks();
        taskForm.reset();
      }
    });
  
    // Complete and Delete buttons event delegation
    taskList.addEventListener('click', function (e) {
      if (e.target.classList.contains('complete-btn')) {
        const index = e.target.getAttribute('data-index');
        tasks[index].completed = !tasks[index].completed;
        renderTasks();
      }
  
      if (e.target.classList.contains('delete-btn')) {
        const index = e.target.getAttribute('data-index');
        tasks.splice(index, 1);
        renderTasks();
      }
    });
  });
  