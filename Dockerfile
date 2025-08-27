FROM python:3.9.9-slim-bullseye

# Set working directory and copy files
WORKDIR /usr/src/gamedaybot
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Launch app
CMD ["python3", "gamedaybot/espn/espn_bot.py"]
