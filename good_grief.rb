def process_grief(complex_emotions)
  complex_emotions.each_with_index do |emotion, index|
    process(emotion)
    stop(emotion)

    wait_your_turn(complex_emotions[index + 1])
    i_said_stop(emotion)

    why_are_you_still_here(complex_emotions[index - 1])
    stop_dammit(emotion)
  end

  # don't forget to spiral
  process_grief(complex_emotions)
end
