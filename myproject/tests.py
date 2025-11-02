# todo/tests.py

from django.test import TestCase
from django.urls import reverse

class TodoViewTest(TestCase):

    def test_index_view_status_code(self):
        """Проверяет, что главная страница доступна (HTTP 200)."""
        response = self.client.get(reverse('index'))
        self.assertEqual(response.status_code, 200)

    def test_index_view_uses_correct_template(self):
        """Проверяет, что главная страница использует правильный шаблон."""
        response = self.client.get(reverse('index'))
        self.assertTemplateUsed(response, 'todo/index.html')