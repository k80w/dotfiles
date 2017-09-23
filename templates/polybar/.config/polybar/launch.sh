killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar primary &
polybar secondary &
polybar tertiary &
polybar laptop &

echo "Bar launched..."
