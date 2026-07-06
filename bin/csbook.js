document.addEventListener("DOMContentLoaded", () => {
    const allItems = Array.from(document.querySelectorAll('.chapter-item'));

    // 2. ОБРАБОТЧИК КЛИКОВ (ПРОСТО ТОГГЛ КЛАССА)
    allItems.forEach(item => {
        if (!item.classList.contains('collapsible')) return;
        const menuId = item.getAttribute('data-menu-id');

        item.addEventListener('click', (e) => {
            if (e.target.tagName === 'A') return;
            e.preventDefault();

            // Меняем класс, а CSS мгновенно прячет всю цепочку потомков без задержек и моргания
            const isNowCollapsed = item.classList.toggle('collapsed');
            localStorage.setItem(`menu-collapsed-${menuId}`, isNowCollapsed);
        });
    });
});
