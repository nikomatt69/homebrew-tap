# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-24T18:13:27.388Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.111.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.111.0/nikcli-ai-darwin-x64.zip"
      sha256 "28df86e46162dc7435f225d04f63a5481ada5dde9fcfa90262e2800c0ba87e2d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.111.0/nikcli-ai-darwin-arm64.zip"
      sha256 "51e4c12e46bf745d60ec4587075e3e9498e92cb9199e491cd5be99439eca3a97"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.111.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "09af868c2412bc15b55eba79309d23647c42041ca8ada591125f2254383ec72c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.111.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "678b56acc812080803dbba3c561effecd438c9f686e66d79aabaff19b3c898f9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

