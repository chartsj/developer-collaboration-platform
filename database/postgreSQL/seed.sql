-- this creates data in the tables


--reset table
TRUNCATE TABLE
issue_assignments,
comments,
issues,
repositories,
users
RESTART IDENTITY CASCADE;
-- insert users
INSERT INTO users (username, email) values ( 'charlene','charlene@gmail.com'),
('alice', 'alice@example.com'),
('bob', 'bob@example.com'),
('david', 'david@example.com'),
('emma', 'emma@example.com'),
('frank', 'frank@example.com'),
('grace', 'grace@example.com'),
('henry', 'henry@example.com'),
('irene', 'irene@example.com'),
('jack', 'jack@example.com'),
('kelly', 'kelly@example.com'),
('leo', 'leo@example.com'),
('mia', 'mia@example.com'),
('noah', 'noah@example.com'),
('olivia', 'olivia@example.com');

-- insert into repositories table
INSERT INTO repositories (owner_id, name) VALUES
-- user 1
(1, 'postgres-issue-tracker'),
(1, 'issue-tracker-db'),
(1, 'api-gateway'),

-- user 2
(2, 'mobile-app'),
(2, 'order-service'),
(2, 'recommendation-engine'),

-- user 3
(3, 'inventory-service'),
(3, 'analytics-api'),
(3, 'kubernetes-demo'),

-- user 4
(4, 'search-service'),
(4, 'billing-service'),
(4, 'docker-lab'),

-- user 5
(5, 'notification-service'),
(5, 'user-service'),

-- user 6
(6, 'frontend-dashboard'),
(6, 'admin-portal'),

-- user 7
(7, 'vector-search-engine'),
(7, 'chatbot-backend'),

-- user 8
(8, 'terraform-infra'),
(8, 'deployment-scripts'),

-- user 9
(9, 'sql-playground'),
(9, 'database-lab'),

-- user 10
(10, 'task-manager'),
(10, 'todo-api'),

-- user 11
(11, 'ml-experiments'),
(11, 'data-pipeline'),

-- user 12
(12, 'payment-gateway'),
(12, 'fraud-detection'),

-- user 13
(13, 'game-server'),
(13, 'matchmaking-service'),

-- user 14
(14, 'weather-api'),
(14, 'iot-dashboard'),

-- user 15
(15, 'blog-platform'),
(15, 'content-management');


--insert into issues table
INSERT INTO issues (repo_id,title,description,status,created_by) VALUES
(1, 'Login API returns 500 error', 'Users report a 500 server error when submitting login credentials.', 'open', 2),
(1, 'Password reset email not sent', 'Reset password endpoint completes successfully but no email is delivered.', 'open', 3),

(2, 'Payment service timeout', 'Payment processing sometimes times out during peak traffic.', 'in_progress', 1),
(2, 'Incorrect currency calculation', 'Total payment amount shows incorrect conversion for international users.', 'open', 4),

(3, 'Search results not ranking properly', 'Search results appear in random order instead of relevance.', 'open', 5),
(3, 'Pagination breaks after page 5', 'Pagination API returns empty results beyond page 5.', 'closed', 6),

(4, 'Notification emails duplicated', 'Users receive duplicate email notifications when a new order is placed.', 'open', 7),
(4, 'Webhook delivery failure', 'External webhook endpoints occasionally fail due to incorrect payload format.', 'in_progress', 8),

(5, 'Frontend dashboard slow loading', 'Dashboard page takes more than 5 seconds to render charts.', 'open', 9),
(5, 'User avatar upload fails', 'Image upload returns success but the avatar does not appear on profile.', 'closed', 10),

(6, 'Database migration script fails', 'Migration script crashes due to missing column in existing table.', 'open', 11),
(6, 'Kubernetes deployment config incorrect', 'Pod fails to start due to invalid environment variable reference.', 'in_progress', 12),

(7, 'Chatbot response delay', 'LLM responses take more than 20 seconds during heavy usage.', 'open', 3),
(7, 'Vector search returns irrelevant documents', 'Embedding search retrieves unrelated documents from Qdrant.', 'open', 4),

(8, 'Logging service disk usage high', 'Log rotation not working and disk usage is increasing rapidly.', 'in_progress', 6),
(4, 'API gateway returns inconsistent error codes', 'Gateway sometimes returns HTTP 500 instead of the expected 401 or 403 responses.', 'open', 8),

(5, 'User profile update not persisted', 'Users can submit profile changes but the database does not reflect the updates.', 'open', 9),

(7, 'Chatbot hallucinating incorrect answers', 'LLM occasionally generates incorrect responses unrelated to the user query.', 'open', 10),

(8, 'Deployment script fails on fresh environment', 'Shell deployment script assumes existing environment variables and fails on clean servers.', 'open', 11);


--insert into issue_assignments table
INSERT INTO issue_assignments (issue_id, user_id, assigned_by) VALUES
(1, 3, 1),
(2, 4, 1),
(3, 2, 1),
(4, 5, 2),
(5, 3, 2),
(6, 4, 1),
(7, 2, 3),
(8, 5, 3),
(9, 6, 1),
(10, 7, 2),
(11, 8, 3),
(12, 9, 4),
(13, 10, 2),
(14, 11, 3),
(15, 12, 4);