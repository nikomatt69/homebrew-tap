# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-28T17:45:50.435Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.207.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.207.0/nikcli-ai-darwin-x64.zip"
      sha256 "a020b835d571ec2fcdc625771813403beb2a1dd74d313984202264a7c1cc4efe"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.207.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7487d8c11ca7dd1b5445c55355db983e59b4bbd83bff0af133eba73850f52119"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.207.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d6bb37949db6135b5dff251eec5ac286a77712a7fab18a2b272c799bf2d21b4a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.207.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ab0a58243dec576ce795b7ab65e7e3e80ee87d98bd8a9ba47a8fac119172e134"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

