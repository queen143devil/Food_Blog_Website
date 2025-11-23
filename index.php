<?php
include('header.php');
include('post.php');
include('Tag.php');

$post = new Post($db);
$tags = new Tag($db);
?>

<div class="container mt-4">

    <div class="row">

        <!-- ================= POSTS SECTION ================= -->
        <div class="col-md-8">

            <?php foreach ($post->getPost() as $post) { ?>
                <div class="card mb-4 shadow-sm border-0 rounded-3">

                    <div class="row g-0">

                        <div class="col-md-4">
                            <img src="images/<?php echo $post['image']; ?>"
                                 class="img-fluid rounded-start"
                                 style="height: 180px; width: 100%; object-fit: cover;">
                        </div>

                        <div class="col-md-8">
                            <div class="card-body">

                                <h5 class="card-title">
                                    <a href="view.php?slug=<?php echo $post['slug']; ?>" class="text-dark text-decoration-none">
                                        <?php echo $post['title']; ?>
                                    </a>
                                </h5>

                                <p class="text-muted small mb-2">
                                    <strong>Author:</strong> Admin &nbsp; | &nbsp;
                                    <strong>Created:</strong> <?php echo date('Y-m-d', strtotime($post['created_at'])); ?>
                                </p>

                                <p class="card-text">
                                    <?php echo htmlspecialchars_decode(substr($post['description'], 0, 120)); ?>...
                                </p>

                                <a href="view.php?slug=<?php echo $post['slug']; ?>" class="btn btn-primary btn-sm">
                                    Read More
                                </a>

                            </div>
                        </div>

                    </div>

                </div>
            <?php } ?>

        </div>

        <!-- ================= TAG SECTION ================= -->
        <div class="col-md-4">

            <div class="card shadow-sm border-0 rounded-3">
                <div class="card-body">
                    <h4 class="card-title mb-3">Browse by Tags</h4>

                    <?php foreach ($tags->getAllTags() as $tag) { ?>
                        <a href="index.php?tag=<?php echo $tag['tag']; ?>" class="d-inline-block mb-2">
                            <span class="badge bg-warning text-dark p-2">
                                <?php echo $tag['tag']; ?>
                            </span>
                        </a>
                    <?php } ?>

                </div>
            </div>

        </div>

    </div>
</div>

<style>
    body {
        background: #f7f7f7;
        font-family: "Segoe UI", sans-serif;
    }
    .card-title a:hover {
        color: #0d6efd;
    }
</style>
