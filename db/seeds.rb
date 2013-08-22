if PostGroup.count == 0
  post_groups = PostGroup.create([
    { name: 'Prog'},
    { name: 'Board'}
  ])
end

if PostCategory.count == 0
  post_categories = PostCategory.create([
    { name: 'Ruby', post_group_id: '1'},
    { name: 'Rails', post_group_id: '1'},
    { name: 'Gem', post_group_id: '1'},
    { name: 'Java', post_group_id: '1'},
    { name: 'Spring', post_group_id: '1'},
    { name: 'Struts', post_group_id: '1'},
    { name: 'JQuery', post_group_id: '1'},
    { name: 'CSS', post_group_id: '1'},
    { name: 'Linux', post_group_id: '1'},
    { name: 'Server', post_group_id: '1'},
    { name: 'Cloud', post_group_id: '1'},
    { name: 'Project', post_group_id: '1'},
    { name: 'Util', post_group_id: '1'},
    { name: 'Office', post_group_id: '1'},
    { name: 'Oracle', post_group_id: '1'},
    { name: 'MySQL', post_group_id: '1'},
    { name: 'Postgre', post_group_id: '1'},
    { name: 'Mybatis', post_group_id: '1'},
    { name: 'Notice', post_group_id: '2'},
    { name: 'Free', post_group_id: '2'},
    { name: 'ITnews', post_group_id: '2'},
    { name: 'Editorial', post_group_id: '2'},
    { name: 'Mobile', post_group_id: '2'},
    { name: 'Community', post_group_id: '2'},
    { name: 'Meeting', post_group_id: '2'},
    { name: 'Book', post_group_id: '2'},
    { name: 'Memo', post_group_id: '2' }
  ])
end
