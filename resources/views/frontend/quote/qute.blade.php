<!DOCTYPE html>
<html>
<head>
    <title>Request a Quote</title>
</head>
<body>
    <h1>Request a Quote</h1>
    <form action="{{ url('/quote') }}" method="post">
        @csrf
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required>
        <br>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <br>
        <label for="message">Message:</label>
        <textarea name="message" id="message" rows="4" required></textarea>
        <br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
